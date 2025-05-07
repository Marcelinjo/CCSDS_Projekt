library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FIFO_Stack is
    Port (
        clk         : in  std_logic;
        rst         : in  std_logic;

        -- Eingabeseite (z.?B. von UART, SpaceWire etc.)
        data_in     : in  std_logic_vector(7 downto 0);
        data_valid  : in  std_logic;
        
        -- Ausgabeseite
        data_out    : out std_logic_vector(7 downto 0);
        pkt_ready   : inout std_logic;
        read_en     : in  std_logic;

        -- Status
        fifo_full   : out std_logic;
        fifo_empty  : out std_logic
    );
end FIFO_Stack;

architecture Behavioral of FIFO_Stack is

    type ram_type is array(0 to 4095) of std_logic_vector(7 downto 0);
    signal fifo_mem : ram_type;

    signal wr_ptr : integer range 0 to 4095 := 0;
    signal rd_ptr : integer range 0 to 4095 := 0;

    signal byte_count      : integer range 0 to 255 := 0;
    signal pkt_length      : integer range 0 to 255 := 0;
    signal header_buf      : std_logic_vector(47 downto 0) := (others => '0');
    signal header_index    : integer range 0 to 5 := 0;
    signal capturing       : std_logic := '0';
    signal pkt_valid       : std_logic := '0';
    signal pkt_end_ptr     : integer range 0 to 4095 := 0;

begin

    -- FIFO status
    fifo_empty <= '1' when wr_ptr = rd_ptr else '0';
    fifo_full  <= '1' when (wr_ptr + 1) mod 4096 = rd_ptr else '0';

    -- Datenerfassung & Paketaufbau
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                header_index <= 0;
                capturing <= '0';
                pkt_valid <= '0';
                byte_count <= 0;
                wr_ptr <= 0;
            elsif data_valid = '1' then
                if capturing = '0' then
                    -- Headeraufbau (6 Bytes CCSDS Primary Header)
                    header_buf(47 - header_index*8 downto 40 - header_index*8) <= data_in;
                    header_index <= header_index + 1;
                    if header_index = 5 then
                        capturing <= '1';
                        header_index <= 0;

                        -- Paketlänge (CCSDS gibt Packet Length = N - 1)
                        pkt_length <= to_integer(unsigned(header_buf(15 downto 0))) + 7;
                        byte_count <= 6;

                        -- Speichere Header in FIFO
                        for i in 0 to 5 loop
                            fifo_mem((wr_ptr + i) mod 4096) <= header_buf(47 - i*8 downto 40 - i*8);
                        end loop;
                        wr_ptr <= (wr_ptr + 6) mod 4096;
                    end if;

                elsif capturing = '1' then
                    fifo_mem(wr_ptr) <= data_in;
                    wr_ptr <= (wr_ptr + 1) mod 4096;
                    byte_count <= byte_count + 1;

                    if byte_count = pkt_length - 1 then
                        capturing <= '0';
                        pkt_valid <= '1';
                        pkt_end_ptr <= wr_ptr;
                    end if;
                end if;
            end if;
        end if;
    end process;

    -- Paketbereitstellung zum Lesen
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                rd_ptr <= 0;
                pkt_ready <= '0';
            elsif pkt_valid = '1' then
                pkt_ready <= '1';
                pkt_valid <= '0';
            elsif read_en = '1' and pkt_ready = '1' then
                data_out <= fifo_mem(rd_ptr);
                rd_ptr <= (rd_ptr + 1) mod 4096;
                if rd_ptr = pkt_end_ptr then
                    pkt_ready <= '0';
                end if;
            end if;
        end if;
    end process;

end Behavioral;
