
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity signextend is port ( In_Sign : in  STD_LOGIC_VECTOR (15 downto 0);
           Out_Sign : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end signextend;

architecture Behavioral of signextend is

begin

process (In_Sign)
begin
	Out_Sign(15 downto 0) <= In_Sign(15 downto 0);
	if In_Sign(15) = '0' then
		Out_Sign(31 downto 16) <=x"0000";
	elsif   In_Sign(15) = '1' then
		Out_Sign(31 downto 16) <=x"ffff";
	end if;
end process;
end Behavioral;

