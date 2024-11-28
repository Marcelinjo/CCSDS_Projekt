library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ASM is
    Port (
        asm_data  : out STD_LOGIC_VECTOR(31 downto 0)
    );
end ASM;

architecture Behavioral of ASM is
begin

    asm_data <= "00011010110011111111110000011101"; -- 0x1ACFFC1D nach CCSDS 131.0-B-3, Chapter 9.3
    
end Behavioral;
