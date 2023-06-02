library IEEE;
use ieee.STD_LOGIC_unsigned.ALL;
use ieee.STD_LOGIC_arith.ALL;
use ieee.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
    Port ( a_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           b_ALU : in  STD_LOGIC_VECTOR (31 downto 0);
           operationALU : in  STD_LOGIC_VECTOR (3 downto 0);
           zeroALU : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture Behavioral of ALU is

begin
process(a_ALU,b_ALU,operationALU)
begin

	if operationALU = "0000" then 
		result <= a_ALU and b_ALU;
	elsif  operationALU = "0001" then 
		result <= a_ALU or b_ALU;
	elsif operationALU = "0010" then 
		result <= a_ALU + b_ALU;
	elsif operationALU = "0110" then 
		result <= a_ALU - b_ALU;
	elsif operationALU = "1100" then 
	result <= a_ALU nor b_ALU;
	elsif operationALU = "0111" then 
		if a_ALU < b_ALU then
			result <= x"00000001";
		else 
			result <= x"00000000";
		end if;
	end if;
	
	if a_ALU = b_ALU then 
		zeroALU <= '1';
	else 
		zeroALU <= '0';
	end if;
end process;



end Behavioral;

