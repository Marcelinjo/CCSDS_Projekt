library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Top-Level Entity
entity TopLevel is
    Port (
        clk : in STD_LOGIC;
        dummy_out : out STD_LOGIC
    );
end TopLevel;

architecture Behavioral of TopLevel is

    -- Komponentendeklaration für TM_Generator
    component TM_Generator
        Port (
            clk         : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            start       : in  STD_LOGIC;
            data_in     : in  STD_LOGIC_VECTOR(7 downto 0);
            data_valid  : in  STD_LOGIC;
            ocf_data     : in  STD_LOGIC_VECTOR(31 downto 0);
            buffer_out  : out STD_LOGIC_VECTOR(16399 downto 0);
            buffer_full : out STD_LOGIC
            
        );
    end component;
    


    -- Interne Signale für TM_Generator
    signal reset       : STD_LOGIC := '0';
    signal start       : STD_LOGIC := '0';
    signal buffer_out  : STD_LOGIC_VECTOR(16399 downto 0);
    signal buffer_full : STD_LOGIC;
    
    signal ocf_data     : STD_LOGIC_VECTOR(31 downto 0):= x"01234567";

    signal data_in    : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
    signal data_valid : STD_LOGIC := '0';

begin

    -- Instanziierung von TM_Generator
    U_TM_Generator: TM_Generator
    port map (
        clk         => clk,
        reset       => reset,
        start       => start,
        data_in     => data_in,
        data_valid  => data_valid,
        ocf_data => ocf_data,
        buffer_out  => buffer_out,
        buffer_full => buffer_full
    );

    dummy_out <= buffer_out(0);  -- Um die Optimierung zu vermeiden


end Behavioral;
