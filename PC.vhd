
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



 
entity PC is
    Port ( Pc_In : in  STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
           Pc_Out : out  STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
           clk : in  STD_LOGIC);
end PC;

architecture Behavioral of PC is

signal reg : STD_LOGIC_VECTOR (31 downto 0):= x"00000000";

begin
process (clk , Pc_In)
begin
	if falling_edge(clk) then
		reg <= Pc_In ;
	else
		Pc_Out <= reg ;
	end if;
end process;
end Behavioral;


