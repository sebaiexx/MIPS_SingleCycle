
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;


entity RegisterFiles is Port ( Read_Register1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Read_Register2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_Register : in  STD_LOGIC_VECTOR (4 downto 0);
           Write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
           Read_Data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           Read_Data2 : out  STD_LOGIC_VECTOR (31 downto 0);
			  clk : in  STD_LOGIC);
			  
end RegisterFiles;

architecture Behavioral of RegisterFiles is
type registerfile is array (0 to 31) of STD_LOGIC_VECTOR(31 downto 0 );
signal registers :registerfile :=
(
	x"00000000",x"00000001",x"00000002",x"00000003",x"00000000",x"0000003c",x"00000006",x"00000007",
	x"00000008",x"00000009",x"0000000A",x"0000000B",x"0000000C",x"0000000D",x"0000000E",x"0000000F",
	x"00000010",x"00000011",x"00000012",x"00000013",x"00000014",x"00000015",x"00000016",x"00000017",
	x"00000018",x"00000019",x"0000001A",x"0000001B",x"0000001C",x"0000001D",x"0000001E",x"0000001F");

begin
Read_Data1 <= registers(to_integer(unsigned(Read_Register1)));
Read_Data2 <= registers(to_integer(unsigned(Read_Register2)));

process (clk , RegWrite)
begin
	if rising_edge(clk)  AND RegWrite = '1' then
		registers(to_integer(unsigned(Write_Register))) <= Write_data;
	end if;
	end process;

end Behavioral;

