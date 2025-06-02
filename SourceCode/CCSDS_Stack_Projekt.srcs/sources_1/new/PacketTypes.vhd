library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package PacketTypes is

    -- Typdefinition für den Frame-Speicher: 2034 Bytes à 8 Bit
    type frame_t is array(0 to 2033) of std_logic_vector(7 downto 0);

end PacketTypes;
