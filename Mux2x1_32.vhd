library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux2x1_32 is 
       Port ( AM : in  STD_LOGIC_VECTOR (31 downto 0);
           BM : in  STD_LOGIC_VECTOR (31 downto 0);
           SM : in  STD_LOGIC;
           OUTM : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux2x1_32;

architecture Behavioral of Mux2x1_32 is

begin

process(AM,BM,SM)
begin
	if SM='0' then
		OUTM <= AM;
	else
		OUTM <= BM;
	end if;
end process;

end Behavioral;



