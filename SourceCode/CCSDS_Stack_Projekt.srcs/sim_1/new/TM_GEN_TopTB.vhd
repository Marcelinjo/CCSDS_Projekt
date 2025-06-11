library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TM_GEN_TopTB is
end TM_GEN_TopTB;

architecture Behavioral of TM_GEN_TopTB is
    -- Signals
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal start       : std_logic := '0';
    signal data_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_valid  : std_logic := '0';
    signal buffer_full : std_logic := '0';
    signal buffer_out  : std_logic_vector(16399 downto 0);

begin

    -- Clock generation: 20ns period => 50MHz
    clk_process : process
    begin
        clk <= '0';
        wait for 10 ns;
        clk <= '1';
        wait for 10 ns;
    end process;

    -- Instantiate your test driver
    TestDriver_inst : entity work.TM_GEN_TestDriver
        port map (
            clk         => clk,
            buffer_full => buffer_full,
            buffer_out  => buffer_out,
            reset       => reset,
            start       => start,
            data_in     => data_in,
            data_valid  => data_valid
        );

    -- Instantiate the TM Generator (DUT)
    TM_GEN_inst : entity work.TM_Generator
        port map (
            clk         => clk,
            reset       => reset,
            start       => start,
            data_in     => data_in,
            data_valid  => data_valid,
            buffer_full => buffer_full,
            buffer_out  => buffer_out
        );

    -- Optional: simulate buffer_full toggling
    process
    begin
        wait for 200 ns;
        buffer_full <= '1';
        wait for 100 ns;
        buffer_full <= '0';
        wait; -- Stop simulation
    end process;

end Behavioral;
