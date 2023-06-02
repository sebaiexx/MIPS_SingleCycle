
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity shiftlift2 is Port ( In_Shift : in  STD_LOGIC_VECTOR (31 downto 0);
           Out_Shift : out  STD_LOGIC_VECTOR (31 downto 0));
end shiftlift2;

architecture Behavioral of shiftlift2 is

begin
Out_Shift(1 downto 0) <= "00";
Out_Shift(31 downto 2) <= In_Shift(29 downto 0);

end Behavioral;

