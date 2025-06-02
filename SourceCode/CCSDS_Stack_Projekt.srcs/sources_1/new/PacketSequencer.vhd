library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.PacketTypes.all;

entity PacketSequencer is
    Port (
        clk            : in  STD_LOGIC;
        reset          : in  STD_LOGIC;
        seq_enable     : in  STD_LOGIC;

        -- FIFO (nur lesen)
        data_out       : in  STD_LOGIC_VECTOR(7 downto 0);
        fifo_empty     : in  STD_LOGIC;
        pkt_ready      : in  STD_LOGIC;
        read_en        : out STD_LOGIC;

        -- Ausgabe: vollständiger Frame
        frame_buffer   : out frame_t;
        frame_ready    : out STD_LOGIC
    );
end PacketSequencer;

architecture Behavioral of PacketSequencer is

    type state_t is (IDLE, READING, DONE);
    signal state : state_t := IDLE;

    signal internal_buffer : frame_t;
    signal write_index     : INTEGER range 0 to 2033 := 0;

begin

    process(clk, reset)
    begin
        if reset = '1' then
            read_en        <= '0';
            frame_ready    <= '0';
            write_index    <= 0;
            state          <= IDLE;
        elsif rising_edge(clk) then
            case state is
                when IDLE =>
                    frame_ready <= '0';
                    if seq_enable = '1' and pkt_ready = '1' and fifo_empty = '0' then
                        read_en <= '1';
                        state <= READING;
                    else
                        read_en <= '0';
                    end if;

                when READING =>
                    internal_buffer(write_index) <= data_out;
                    write_index <= write_index + 1;

                    if write_index = 2033 or fifo_empty = '1' then
                        read_en <= '0';
                        state <= DONE;
                    else
                        read_en <= '1';
                    end if;

                when DONE =>
                    frame_ready <= '1';
                    read_en <= '0';
                    -- bleibe in DONE bis Reset
            end case;
        end if;
    end process;

    -- Buffer nach außen geben
    frame_buffer <= internal_buffer;

end Behavioral;
