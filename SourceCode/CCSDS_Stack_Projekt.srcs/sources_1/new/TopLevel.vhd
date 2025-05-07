library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.PacketTypes.all;

entity TopLevel is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        start       : in  STD_LOGIC;
        buffer_out  : out STD_LOGIC_VECTOR(16399 downto 0); -- 2050 Bytes
        buffer_full : out STD_LOGIC
    );
end TopLevel;

architecture Behavioral of TopLevel is

    -- Submodule Signale
    signal asm_Field     : STD_LOGIC_VECTOR(31 downto 0);
    signal header_data   : STD_LOGIC_VECTOR(47 downto 0);

    -- FIFO-Schnittstelle (für Kompatibilität, wird intern im Sequencer benutzt)
    signal fifo_data_out  : STD_LOGIC_VECTOR(7 downto 0);
    signal fifo_pkt_ready : STD_LOGIC;
    signal fifo_read_en   : STD_LOGIC;
    signal fifo_empty     : STD_LOGIC;

    -- Frame-Daten
    signal frame_buffer   : frame_t;
    signal frame_ready    : STD_LOGIC;

    -- Interner Buffer
    signal buffer_temp    : STD_LOGIC_VECTOR(16399 downto 0) := (others => '0');
    signal write_index    : INTEGER range 0 to 2049 := 0;
    signal writing        : STD_LOGIC := '0';
    
    signal ocf_data : STD_LOGIC_VECTOR(31 downto 0);
    signal fec_data : STD_LOGIC_VECTOR(15 downto 0);

    -- Steuerung (z.?B. durch das Startsignal)
    signal ocf_en : STD_LOGIC := '0';
    signal fec_en : STD_LOGIC := '0';

begin

    ----------------------------------------------------------------
    -- Submodule: ASM, HeaderGenerator, PacketSequencer
    ----------------------------------------------------------------
    ASM_Inst : entity work.ASM
        Port Map (
            asm_data => asm_Field
        );

    Header_Inst : entity work.HeaderGenerator
        Port Map (
            clk           => clk,
            reset         => reset,
            header_enable => start,
            header_data   => header_data
        );

    Packet_Inst : entity work.PacketSequencer
        Port Map (
            clk            => clk,
            reset          => reset,
            seq_enable     => start,
            data_out       => fifo_data_out,
            fifo_empty     => fifo_empty,
            pkt_ready      => fifo_pkt_ready,
            read_en        => fifo_read_en,
            frame_buffer   => frame_buffer,
            frame_ready    => frame_ready
        );


    
    -- In der Architektur:
    OCF_Inst : entity work.OCFGenerator
        Port Map (
            clk      => clk,
            reset    => reset,
            ocf_en   => ocf_en,
            ocf_data => ocf_data
        );
    
    FEC_Inst : entity work.FECGenerator
        Port Map (
            clk      => clk,
            reset    => reset,
            fec_en   => fec_en,
            fec_data => fec_data
        );

    ----------------------------------------------------------------
    -- Hauptprozess: Frame in Buffer aufbauen
    ----------------------------------------------------------------
    process(clk, reset)
    begin
        if reset = '1' then
            buffer_temp   <= (others => '0');
            write_index   <= 0;
            writing       <= '0';
            buffer_full   <= '0';
        elsif rising_edge(clk) then
            if start = '1' then
                write_index <= 0;
                writing <= '1';
                buffer_full <= '0';
            end if;

            if writing = '1' and frame_ready = '1' then
                case write_index is
                    -- ASM (4 Byte)
                    when 0 to 3 =>
                        buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= asm_Field(31 - write_index*8 downto 24 - write_index*8);

                    -- Header (6 Byte)
                    when 4 to 9 =>
                        buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= header_data(47 - (write_index - 4)*8 downto 40 - (write_index - 4)*8);

                    -- Frame-Daten (2040 Byte)
                    when 10 to 2043 =>
                        buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= frame_buffer(write_index - 10);

                    -- OCF (4 Byte)
                    when 2044 to 2047 =>
                        buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= ocf_data(31 - (write_index - 2044)*8 downto 24 - (write_index - 2044)*8);
                
                    -- FEC (2 Byte)
                    when 2048 to 2049 =>
                        buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= fec_data(15 - (write_index - 2048)*8 downto 8 - (write_index - 2048)*8);
                
                    when others =>
                        null;
                end case;

                -- Index erhöhen
                if write_index < 2049 then
                    write_index <= write_index + 1;
                else
                    writing     <= '0';
                    buffer_full <= '1';
                end if;
            end if;
        end if;
    end process;

    ----------------------------------------------------------------
    -- Buffer-Ausgabe
    ----------------------------------------------------------------
    buffer_out <= buffer_temp;

end Behavioral;
