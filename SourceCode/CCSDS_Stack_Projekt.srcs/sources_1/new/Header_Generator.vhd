library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity HeaderGenerator is
    Port (
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        header_enable : in  STD_LOGIC;
        header_data   : out STD_LOGIC_VECTOR(47 downto 0) -- 6 Bytes = 48 Bit
    );
end HeaderGenerator;

architecture Behavioral of HeaderGenerator is
    signal Transfer_Frame_Version_Number: STD_LOGIC_VECTOR(1 downto 0) := "00";                     -- shall be set to 0 according to CCSDS 132.0-B-3 Chapter 4.1.2.2.2
    signal SCID: STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
    signal VCID: STD_LOGIC_VECTOR(2 downto 0) := "000";                                             -- Virtual Channel set to Channel 0
    signal OCF_Flag: STD_LOGIC := '1';                                                              -- OCF present, thus '1'
    signal Master_Channel_Frame_Count: STD_LOGIC_VECTOR(7 downto 0) := "00000000";                  -- Counts the number of Master Frames Transfered
    signal Virtual_Channel_Frame_Count: STD_LOGIC_VECTOR(7 downto 0) := "00000000";                 -- Counts the number of Virtual Frames Transfered
    
    signal Transfer_Frame_Secondary_Header_Flag: STD_LOGIC := '1';                                  -- Secondary Header is present, thus Flag shall be 1 according to CCSDS 132.0-B-3 Chapter 4.1.2.7.2 
    signal Synchronization_Flag: STD_LOGIC := '0';                                                  -- Synchronization Flag shall signal ctet-synchronized and forward-ordered Packets or Idle Data are inserted according to CCSDS 132.0-B-3 Chapter 4.1.2.7.3  
    signal Packet_Order_Flag: STD_LOGIC := '1';                                                     -- Packet Order Flag as Order is undefined according to CCSDS 132.0-B-3 Chapter 4.1.2.7.4
    signal Segment_Length_Identifier: STD_LOGIC_VECTOR(1 downto 0) := "00";                         -- Segment Length Identifier is undefined according to CCSDS 132.0-B-3 Chapter 4.1.2.7.5
    signal First_Header_Pointer: STD_LOGIC_VECTOR(10 downto 0) := "00000000000";                    -- First Header Pointer shall be set according to CCSDS 132.0-B-3 Chapter 4.1.2.7.6
   
    signal Transfer_Frame_Data_Field_Status: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
    
begin
    process(clk, reset)
    begin
        if reset = '1' then
            header_data <= (others => '0');
        elsif rising_edge(clk) then
            if header_enable = '1' then
            
            -- Zusammensetzen der Signale in den Vektor Transfer_Frame_Data_Field_Status
            Transfer_Frame_Data_Field_Status <= Transfer_Frame_Secondary_Header_Flag &     -- 1 Bit
                                    Synchronization_Flag &                     -- 1 Bit
                                    Packet_Order_Flag &                        -- 1 Bit
                                    Segment_Length_Identifier &                -- 2 Bits
                                    First_Header_Pointer;                      -- 11 Bits

            -- Zusammensetzen der Signale in den Vektor header_data
            header_data <= Transfer_Frame_Version_Number & -- 2 Bits
                                    SCID &                         -- 10 Bits
                                    VCID &                         -- 3 Bits
                                    OCF_Flag &                     -- 1 Bit
                                    Master_Channel_Frame_Count &   -- 8 Bits
                                    Virtual_Channel_Frame_Count &  -- 8 Bits
                                    Transfer_Frame_Data_Field_Status; -- 16 Bits
            end if;
        end if;
    end process;
end Behavioral;
