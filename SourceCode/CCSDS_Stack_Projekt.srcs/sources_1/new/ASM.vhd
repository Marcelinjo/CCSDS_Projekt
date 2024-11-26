library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ASM is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        start     : in  STD_LOGIC;
        asm_data  : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ASM;

architecture Behavioral of ASM is
    signal internal_data : STD_LOGIC_VECTOR(7 downto 0) := "10101010"; -- Beispielwert
begin
    process(clk, reset)
    begin
        if reset = '1' then
            asm_data <= (others => '0');
        elsif rising_edge(clk) then
            if start = '1' then
                asm_data <= internal_data;
            end if;
        end if;
    end process;
end Behavioral;
