library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HeaderGenerator is
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        header_enable : in  STD_LOGIC;
        header_data   : out STD_LOGIC_VECTOR(7 downto 0)
    );
end HeaderGenerator;

architecture Behavioral of HeaderGenerator is
    signal header_value : STD_LOGIC_VECTOR(7 downto 0) := "11001100"; -- Beispielheader
begin
    process(clk, reset)
    begin
        if reset = '1' then
            header_data <= (others => '0');
        elsif rising_edge(clk) then
            if header_enable = '1' then
                header_data <= header_value;
            end if;
        end if;
    end process;
end Behavioral;
