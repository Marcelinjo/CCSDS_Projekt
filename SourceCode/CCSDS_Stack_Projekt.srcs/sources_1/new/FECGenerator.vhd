library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FECGenerator is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        fec_en    : in  STD_LOGIC;
        fec_data  : out STD_LOGIC_VECTOR(15 downto 0)
    );
end FECGenerator;

architecture Behavioral of FECGenerator is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            fec_data <= (others => '0');
        elsif rising_edge(clk) then
            if fec_en = '1' then
                -- Beispiel: statischer Wert oder einfache Berechnung
                fec_data <= x"55AA";
            end if;
        end if;
    end process;
end Behavioral;
