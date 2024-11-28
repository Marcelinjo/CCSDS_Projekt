library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TopLevel is
    Port (
        clk         : in  STD_LOGIC;
        reset       : in  STD_LOGIC;
        start       : in  STD_LOGIC;
        buffer_out  : out STD_LOGIC_VECTOR(31 downto 0);
        buffer_full : inout STD_LOGIC
    );
end TopLevel;

architecture Behavioral of TopLevel is
    -- Signale für Submodule
    signal asm_Field       : STD_LOGIC_VECTOR(31 downto 0);
    signal header_data    : STD_LOGIC_VECTOR(7 downto 0);
    signal packet_data    : STD_LOGIC_VECTOR(7 downto 0);
    signal buffer_in      : STD_LOGIC_VECTOR(7 downto 0);
    signal buffer_pointer : INTEGER range 0 to 3 := 0;
    signal buffer_temp         : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    
begin
    -- Instanzierung der Submodule
    ASM_Inst : entity work.ASM
        Port Map (
            asm_data  => asm_Field
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
            clk           => clk,
            reset         => reset,
            seq_enable    => start,
            packet_data   => packet_data
        );

    -- Buffer Logik
    process(clk, reset)
    begin
        if reset = '1' then
            buffer_temp <= (others => '0');
            buffer_pointer <= 0;
            buffer_full <= '0';
        elsif rising_edge(clk) then
            if start = '1' and buffer_full = '0' then
                -- Auswahl der Quelle
                case buffer_pointer is
                    when 0 => buffer_in <= asm_Field;
                    when 1 => buffer_in <= header_data;
                    when 2 => buffer_in <= packet_data;
                    when others => buffer_in <= (others => '0');
                end case;

                -- Schreiben in den Buffer
                buffer_temp((buffer_pointer + 1) * 8 - 1 downto buffer_pointer * 8) <= buffer_in;
                buffer_pointer <= buffer_pointer + 1;

                -- Prüfen, ob Buffer voll ist
                if buffer_pointer = 3 then
                    buffer_full <= '1';
                end if;
            end if;
        end if;
    end process;

    -- Ausgabe
    buffer_out <= buffer_Temp;

end Behavioral;
