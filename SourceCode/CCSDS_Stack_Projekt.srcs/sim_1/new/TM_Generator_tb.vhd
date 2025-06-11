library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TM_Generator_tb is
end TM_Generator_tb;

architecture Behavioral of TM_Generator_tb is

    -- Signals to connect DUT and test driver
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal start       : std_logic := '1';
    signal data_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_valid  : std_logic := '0';
    signal buffer_full : std_logic;
    signal buffer_out  : std_logic_vector(16399 downto 0);

begin

    -- Clock generation (50 MHz)
    clk_process : process
    begin
        while True loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- DUT instantiation
    uut: entity work.TM_Generator
        port map (
            clk         => clk,
            reset       => reset,
            start       => start,
            data_in     => data_in,
            data_valid  => data_valid,
            ocf_data    => x"01234567",  -- constant test value
            buffer_out  => buffer_out,
            buffer_full => buffer_full
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial reset pulse
        reset <= '1';
        wait for 30 ns;
        reset <= '0';

        -- Start signal
        start <= '1';
        data_in <= x"AB";
        data_valid <= '1';

        wait for 1000 ns;  -- run for some time
        
        -- Stop sending data
        data_valid <= '0';
        start <= '0';

        wait for 1000 ns;

        -- Finish simulation
        wait;
    end process;

end Behavioral;