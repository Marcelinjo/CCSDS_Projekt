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
    signal Transfer_Frame_Version_Number: STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal SCID: STD_LOGIC_VECTOR(9 downto 0) := "0000000000";
    signal VCID: STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal OCF_Flag: STD_LOGIC := '0';
    signal Master_Channel_Frame_Count: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal Virtual_Channel_Frame_Count: STD_LOGIC_VECTOR(7 downto 0) := "00000000";
    signal Transfer_Frame_Data_Field_Status: STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000";
begin
    process(clk, reset)
    begin
        if reset = '1' then
            header_data <= (others => '0');
        elsif rising_edge(clk) then
            if header_enable = '1' then
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
