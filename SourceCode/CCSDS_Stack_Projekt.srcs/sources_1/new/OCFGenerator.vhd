library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity OCFGenerator is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        ocf_en    : in  STD_LOGIC;
        ocf_data  : out STD_LOGIC_VECTOR(31 downto 0)
    );
end OCFGenerator;

architecture Behavioral of OCFGenerator is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            ocf_data <= (others => '0');
        elsif rising_edge(clk) then
            if ocf_en = '1' then
                -- Beispiel: statischer Wert oder einfache Berechnung
                ocf_data <= x"ABCD1234";
            end if;
        end if;
    end process;
end Behavioral;
