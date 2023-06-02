library IEEE;
use ieee.STD_LOGIC_unsigned.ALL;
use ieee.STD_LOGIC_arith.ALL;
use ieee.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;


entity Add is
    Port ( A_add : in  STD_LOGIC_VECTOR (31 downto 0);
           B_add : in  STD_LOGIC_VECTOR (31 downto 0);
           result_add : out  STD_LOGIC_VECTOR (31 downto 0));
end Add;

architecture Behavioral of Add is

begin
result_add <= A_add + B_add;

end Behavioral;

