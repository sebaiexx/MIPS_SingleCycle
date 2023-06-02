Library IEEE;
use ieee.STD_LOGIC_unsigned.ALL;
use ieee.STD_LOGIC_arith.ALL;
use ieee.NUMERIC_STD.ALL;
USE ieee.std_logic_1164.ALL;

entity AddFour is
    Port ( A_addfour : in  STD_LOGIC_VECTOR (31 downto 0);
           Result_addfour : out  STD_LOGIC_VECTOR (31 downto 0));
end AddFour;

architecture Behavioral of AddFour is

begin

   Result_addfour <= A_addfour + x"00000004";

end Behavioral;

