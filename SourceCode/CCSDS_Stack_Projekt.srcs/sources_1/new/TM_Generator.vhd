library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity TM_Generator is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        start       : in  STD_LOGIC;
        
        ocf_data     : in  STD_LOGIC_VECTOR(31 downto 0); -- 4 Bytes

        -- FIFO Eingabe von Top-Level
        data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
        data_valid  : in  STD_LOGIC;

        -- Ausgabe
        buffer_out  : out STD_LOGIC_VECTOR(16399 downto 0); -- 2050 Bytes
        buffer_full : out STD_LOGIC
    );
end TM_Generator;

architecture Behavioral of TM_Generator is

    -- Submodule Signale
    signal asm_Field     : STD_LOGIC_VECTOR(31 downto 0);
    signal header_data   : STD_LOGIC_VECTOR(47 downto 0);

    signal sec_header_data   : STD_LOGIC_VECTOR(511 downto 0);
    
    -- FIFO-Schnittstelle
    signal fifo_data_out  : STD_LOGIC_VECTOR(7 downto 0);
    signal fifo_pkt_ready : STD_LOGIC;
    signal fifo_read_en   : STD_LOGIC;
    signal fifo_empty     : STD_LOGIC;
    signal fifo_full_int  : STD_LOGIC;

    -- Frame-Daten
    signal frame_buffer   : STD_LOGIC_VECTOR(15759 downto 0);
    signal frame_ready    : STD_LOGIC;

    -- Interner Buffer
    signal buffer_temp    : STD_LOGIC_VECTOR(16399 downto 0) := (others => '0');
    signal write_index    : INTEGER range 0 to 2049 := 0;
    signal writing        : STD_LOGIC := '0';
    
    
    signal fec_data : STD_LOGIC_VECTOR(15 downto 0);

    -- Steuerung
    signal ocf_en : STD_LOGIC := '0';
    signal fec_en : STD_LOGIC := '0';
    
    -- Konstanten für Startpositionen in Byte
constant ASM_START     : integer := 0;
constant HEADER_START  : integer := ASM_START + 4;     -- 4 Byte ASM
constant SEC_HDR_START : integer := HEADER_START + 6;  -- 6 Byte Header
constant FRAME_START   : integer := SEC_HDR_START + 64;-- 64 Byte Sekundärheader
constant OCF_START     : integer := FRAME_START + 1970;-- 1970 Byte Frame
constant FEC_START     : integer := OCF_START + 4;     -- 4 Byte OCF
constant TOTAL_BYTES   : integer := FEC_START + 2;     -- 2 Byte FEC = 2050




begin

    ----------------------------------------------------------------
    -- Submodule
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

    Sec_Header_Inst : entity work.SecHeaderGen
        Port Map (
            clk           => clk,
            reset         => reset,
            sec_header_enable => start,
            sec_header_data   => sec_header_data
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

    FIFO_Inst : entity work.FIFO_Stack
        Port Map (
            clk         => clk,
            rst         => reset,
            data_in     => data_in,
            data_valid  => data_valid,
            data_out    => fifo_data_out,
            pkt_ready   => fifo_pkt_ready,
            read_en     => fifo_read_en,
            fifo_full   => fifo_full_int,
            fifo_empty  => fifo_empty
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
            writing     <= '1';
            buffer_full <= '0';
        end if;

        if writing = '1' and frame_ready = '1' then
            -- Byteweise schreiben
            if write_index >= ASM_START and write_index < HEADER_START then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    asm_Field(31 - (write_index - ASM_START)*8 downto 24 - (write_index - ASM_START)*8);

            elsif write_index >= HEADER_START and write_index < SEC_HDR_START then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    header_data(47 - (write_index - HEADER_START)*8 downto 40 - (write_index - HEADER_START)*8);

            elsif write_index >= SEC_HDR_START and write_index < FRAME_START then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    sec_header_data(511 - (write_index - SEC_HDR_START)*8 downto 504 - (write_index - SEC_HDR_START)*8);

            elsif write_index >= FRAME_START and write_index < OCF_START then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    frame_buffer(15759 - (write_index - FRAME_START)*8 downto 15752 - (write_index - FRAME_START)*8);

            elsif write_index >= OCF_START and write_index < FEC_START then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    ocf_data(31 - (write_index - OCF_START)*8 downto 24 - (write_index - OCF_START)*8);

            elsif write_index >= FEC_START and write_index < TOTAL_BYTES then
                buffer_temp(16399 - write_index*8 downto 16392 - write_index*8) <= 
                    fec_data(15 - (write_index - FEC_START)*8 downto 8 - (write_index - FEC_START)*8);

            else
                -- falls über Bereich hinaus
                null;
            end if;

            -- Index erhöhen oder abschließen
            if write_index < TOTAL_BYTES - 1 then
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
    buffer_out  <= buffer_temp;

end Behavioral;
