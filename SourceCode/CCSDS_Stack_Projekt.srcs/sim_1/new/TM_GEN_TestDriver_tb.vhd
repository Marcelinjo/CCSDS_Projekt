library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TM_GEN_TestDriver_tb is
end TM_GEN_TestDriver_tb;

architecture Behavioral of TM_GEN_TestDriver_tb is

    -- Component under test
    component TM_Generator
        Port (
            clk         : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            start       : in  STD_LOGIC;
            ocf_data    : in  STD_LOGIC_VECTOR(31 downto 0);
            data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
            data_valid  : in  STD_LOGIC;
            buffer_out  : out STD_LOGIC_VECTOR(16399 downto 0);
            buffer_full : out STD_LOGIC
        );
    end component;

    -- Signals
    signal clk         : STD_LOGIC := '0';
    signal reset       : STD_LOGIC := '1';
    signal start       : STD_LOGIC := '0';
    signal ocf_data    : STD_LOGIC_VECTOR(31 downto 0) := x"DEADBEEF";
    signal data_in     : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_valid  : STD_LOGIC := '0';
    signal buffer_out  : STD_LOGIC_VECTOR(16399 downto 0);
    signal buffer_full : STD_LOGIC;

    constant CLK_PERIOD : time := 10 ns;

begin

    --------------------------------------------------------------------
    -- Clock generation
    --------------------------------------------------------------------
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    --------------------------------------------------------------------
    -- DUT instantiation
    --------------------------------------------------------------------
    UUT: TM_Generator
        Port Map (
            clk         => clk,
            reset       => reset,
            start       => start,
            ocf_data    => ocf_data,
            data_in     => data_in,
            data_valid  => data_valid,
            buffer_out  => buffer_out,
            buffer_full => buffer_full
        );

    --------------------------------------------------------------------
    -- Stimulus process
    --------------------------------------------------------------------
    stim_proc : process
    begin
        ------------------------------------------------------------
        -- Reset sequence
        ------------------------------------------------------------
        reset <= '1';
        wait for 50 ns;
        reset <= '0';
        wait for 20 ns;

        ------------------------------------------------------------
        -- Inject 2050 bytes into FIFO (simulate one full frame)
        ------------------------------------------------------------
--        for i in 0 to 2049 loop
--            if (i mod 2) = 0 then
--                data_in <= x"AA";  -- 10101010
--            else
--                data_in <= x"55";  -- 01010101
--            end if;
--            data_valid <= '1';
--            wait for CLK_PERIOD;
--        end loop;

        for i in 0 to 2049 loop
            data_in    <= (others => '0'); 
            data_valid <= '1';
            wait for CLK_PERIOD;
        end loop;
        

        data_valid <= '0';
        wait for 20 ns;

        ------------------------------------------------------------
        -- Start after injection
        ------------------------------------------------------------
        start <= '1';
        wait for 30 ns;
        start <= '0';

        ------------------------------------------------------------
        -- Wait for buffer_full = '1' (frame built)
        ------------------------------------------------------------
        wait until buffer_full = '1';
        wait for 30 ns;

        ------------------------------------------------------------
        -- End simulation
        ------------------------------------------------------------
        report "Testbench finished successfully." severity note;
        wait;

    end process;

end Behavioral;
