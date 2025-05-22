library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Top-Level Entity
entity TopLevel is
    Port (
        clk : in STD_LOGIC
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
        buffer_out  : out STD_LOGIC_VECTOR(16399 downto 0);
        buffer_full : out STD_LOGIC
    );
    end component;


    -- Interne Signale für TM_Generator
    signal reset       : STD_LOGIC := '0';
    signal start       : STD_LOGIC := '0';
    signal buffer_out  : STD_LOGIC_VECTOR(16399 downto 0);
    signal buffer_full : STD_LOGIC;

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
        buffer_out  => buffer_out,
        buffer_full => buffer_full
    );

    process(clk)
begin


    if rising_edge(clk) then
        reset <= '0';  -- Später wieder auf '0' setzen

        -- Einfaches Beispiel: ein Byte senden, wenn nicht voll
        if buffer_full = '0' then
            data_in    <= x"AB";  -- Testwert
            data_valid <= '1';
            start      <= '1';
        else
            data_valid <= '0';
        end if;
    end if;
end process;


end Behavioral;
