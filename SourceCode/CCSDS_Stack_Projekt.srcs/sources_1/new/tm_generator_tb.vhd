----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.06.2025 10:48:29
-- Design Name: 
-- Module Name: tm_generator_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tm_generator_tb is
end tm_generator_tb;

architecture behavior of tm_generator_tb is

    -- Clock and control signals
    signal clk         : std_logic := '0';
    signal reset       : std_logic := '0';
    signal start       : std_logic := '0';
    signal data_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_valid  : std_logic := '0';
    signal buffer_out  : std_logic_vector(87 downto 0);

    -- DUT: TM_Generator component declaration
    component TM_Generator
        port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            start       : in  std_logic;
            data_in     : in  std_logic_vector(7 downto 0);
            data_valid  : in  std_logic;
            buffer_out  : out std_logic_vector(87 downto 0)
        );
    end component;

begin

    -- Clock process (50 MHz)
    clk <= not clk after 10 ns;

    -- Instantiate DUT
    DUT: TM_Generator
        port map (
            clk        => clk,
            reset      => reset,
            start      => start,
            data_in    => data_in,
            data_valid => data_valid,
            buffer_out => buffer_out
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Initial reset
        reset <= '1';
        wait for 50 ns;
        reset <= '0';

        wait for 50 ns;

        -- Send start pulse
        start <= '1';
        wait for 20 ns;
        start <= '0';

        -- Send data bytes with valid high
        data_in <= x"AA";
        data_valid <= '1';
        wait for 20 ns;

        data_in <= x"BB";
        wait for 20 ns;

        data_in <= x"CC";
        wait for 20 ns;

        data_valid <= '0';

        -- Wait and observe output
        wait for 500 ns;
        assert false report "Simulation completed" severity failure;
    end process;

end architecture;
