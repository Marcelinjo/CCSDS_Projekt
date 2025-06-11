library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TM_GEN_TestDriver is
    Port (
        clk         : in  STD_LOGIC;
        buffer_full : in  STD_LOGIC;
        buffer_out  : in  STD_LOGIC_VECTOR(16399 downto 0);
        reset       : out STD_LOGIC;
        start       : out STD_LOGIC;
        data_in     : out STD_LOGIC_VECTOR(7 downto 0);
        data_valid  : out STD_LOGIC
    );
end TM_GEN_TestDriver;

architecture Behavioral of TM_GEN_TestDriver is
begin
    process(clk)
    begin
        if rising_edge(clk) then
            reset <= '0';

            if buffer_full = '0' then
                data_in    <= x"AB";  -- Testdaten
                data_valid <= '1';
                start      <= '1';
            else
                data_valid <= '0';
            end if;
        end if;
    end process;
end Behavioral;