----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10.06.2025 08:17:21
-- Design Name: 
-- Module Name: SecHeaderGen - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SecHeaderGen is
    Port (clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        sec_header_enable : in  STD_LOGIC;
        sec_header_data   : out STD_LOGIC_VECTOR(511 downto 0)  -- 64 Byte
         );
end SecHeaderGen;

architecture Behavioral of SecHeaderGen is

    signal TRANSFER_FRAME_SECONDARY_HEADER_ID: STD_LOGIC_VECTOR(7 downto 0) := (others => '0');                    
    signal Transfer_Frame_Secondary_Header_Version_Number: STD_LOGIC_VECTOR(1 downto 0) := "00";               -- shall be set to 00 according to CCSDS 132.0-B-3 Chapter 4.1.3.2.2.1
    signal Transfer_Frame_Secondary_Header_Length: STD_LOGIC_VECTOR(5 downto 0) := "111110";                   -- shall be set to 62 according to CCSDS 132.0-B-3 Chapter 4.1.3.2.3.2
    
    signal TRANSFER_FRAME_SECONDARY_HEADER_DATA_FIELD: STD_LOGIC_VECTOR(503 downto 0) := (others => '0');      -- Datafiel with always 63 Bytes payload space

begin

TRANSFER_FRAME_SECONDARY_HEADER_ID <=     Transfer_Frame_Secondary_Header_Version_Number
                                        & Transfer_Frame_Secondary_Header_Length;
                                        
sec_header_data <=    TRANSFER_FRAME_SECONDARY_HEADER_ID
                & TRANSFER_FRAME_SECONDARY_HEADER_DATA_FIELD;


end Behavioral;
