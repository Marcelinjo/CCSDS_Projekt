library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PacketSequencer is
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        seq_enable    : in  STD_LOGIC;
        packet_data   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end PacketSequencer;

architecture Behavioral of PacketSequencer is
    signal sequence : STD_LOGIC_VECTOR(7 downto 0) := "11110000"; -- Beispielwert
begin
    process(clk, reset)
    begin
        if reset = '1' then
            packet_data <= (others => '0');
        elsif rising_edge(clk) then
            if seq_enable = '1' then
                packet_data <= sequence;
            end if;
        end if;
    end process;
end Behavioral;
