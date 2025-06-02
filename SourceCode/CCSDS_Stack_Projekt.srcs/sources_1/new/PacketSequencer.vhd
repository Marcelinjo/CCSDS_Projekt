library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

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

        -- Ausgabe: vollständige Payload
        frame_buffer   : out STD_LOGIC_VECTOR(15759 downto 0); -- 1970 Bytes * 8 = 15760 Bits
        frame_ready    : out STD_LOGIC
    );
end PacketSequencer;

architecture Behavioral of PacketSequencer is

    type state_t is (IDLE, READING, DONE);
    signal state : state_t := IDLE;

    signal internal_buffer : STD_LOGIC_VECTOR(15759 downto 0);
    signal write_index     : INTEGER range 0 to 1969  := 0;

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
                    write_index <= 0;
                    if seq_enable = '1' and pkt_ready = '1' and fifo_empty = '0' then
                        read_en <= '1';
                        state <= READING;
                    else
                        read_en <= '0';
                    end if;

                when READING =>
                    -- Daten in den internen Buffer schreiben
                    internal_buffer((write_index + 1) * 8 - 1 downto write_index * 8) <= data_out;
                    write_index <= write_index + 1;

                    -- Weiter lesen, solange Platz im Buffer und FIFO nicht leer
                    if write_index = 1969 or fifo_empty = '1' then
                        read_en <= '0';
                        state <= DONE;
                    else
                        read_en <= '1';
                    end if;

                when DONE =>
                    frame_ready <= '1';
                    read_en <= '0';
                    -- bleibt im DONE bis Reset
            end case;
        end if;
    end process;

    -- Buffer nach außen geben
    frame_buffer <= internal_buffer;

end Behavioral;
