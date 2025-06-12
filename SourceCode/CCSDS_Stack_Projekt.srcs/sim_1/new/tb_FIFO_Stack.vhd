library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_FIFO_Stack is
end tb_FIFO_Stack;

architecture sim of tb_FIFO_Stack is

    signal clk         : std_logic := '0';
    signal rst         : std_logic := '1';

    signal data_in     : std_logic_vector(7 downto 0) := (others => '0');
    signal data_valid  : std_logic := '0';

    signal data_out    : std_logic_vector(7 downto 0);
    signal pkt_ready   : std_logic;
    signal read_en     : std_logic := '0';

    signal fifo_full   : std_logic;
    signal fifo_empty  : std_logic;

    component FIFO_Stack is
        Port (
            clk         : in  std_logic;
            rst         : in  std_logic;
            data_in     : in  std_logic_vector(7 downto 0);
            data_valid  : in  std_logic;
            data_out    : out std_logic_vector(7 downto 0);
            pkt_ready   : inout std_logic;
            read_en     : in  std_logic;
            fifo_full   : out std_logic;
            fifo_empty  : out std_logic
        );
    end component;

begin

    DUT: FIFO_Stack
        port map (
            clk         => clk,
            rst         => rst,
            data_in     => data_in,
            data_valid  => data_valid,
            data_out    => data_out,
            pkt_ready   => pkt_ready,
            read_en     => read_en,
            fifo_full   => fifo_full,
            fifo_empty  => fifo_empty
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 5 ns;
            clk <= '1';
            wait for 5 ns;
        end loop;
    end process;

    -- Stimulus process
    stim_proc : process
        procedure send_byte(b : std_logic_vector(7 downto 0)) is
        begin
            data_in <= b;
            data_valid <= '1';
            wait for 10 ns;
            data_valid <= '0';
            wait for 10 ns;
        end procedure;

    begin
        wait for 20 ns;
        rst <= '0';  
        wait for 20 ns;

        -- Send header
        send_byte(x"AA");
        send_byte(x"BB");
        send_byte(x"CC");
        send_byte(x"DD");
        send_byte(x"00");
        send_byte(x"03");

        -- Send 3 payload bytes
        send_byte(x"11");
        send_byte(x"22");
        send_byte(x"33");

        -- Wait for pkt_ready
        wait until pkt_ready = '1';
        wait for 20 ns;

        -- Read all bytes out
        for i in 0 to 8 loop  
            read_en <= '1';
            wait for 10 ns;
            read_en <= '0';
            wait for 10 ns;
        end loop;

        wait;
    end process;

end sim;
