library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.NUMERIC_STD.ALL;



entity Data_Memory is Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0);
           MemRead : in  STD_LOGIC;
           MemWrite : in  STD_LOGIC;
           Clk : in  STD_LOGIC);
end Data_Memory;

architecture Behavioral of Data_Memory is
type DM is array (0 to 127) of STD_LOGIC_VECTOR (7 downto 0);
signal memory : DM :=( x"43",x"6f",x"6d",x"70", x"75",x"74",x"65",x"72",
								x"20",x"41",x"72",x"63", x"68",x"69",x"74",x"65",
								x"63",x"74",x"75",x"72", x"65",x"20",x"32",x"30",
								x"32",x"31",x"21",x"21", x"32",x"31",x"21",x"21",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00",
								x"00",x"00",x"00",x"00", x"00",x"00",x"00",x"00");
begin

process(Address,WriteData,MemRead,MemWrite,Clk)
	begin
		if MemRead = '1' and MemWrite = '0' then 
			ReadData(31 downto 24) <= memory(to_integer(unsigned(Address)));
			ReadData(23 downto 16) <= memory(to_integer(unsigned(Address))+1);
			ReadData(15 downto 8) <= memory(to_integer(unsigned(Address))+2);
			ReadData(7 downto 0) <= memory(to_integer(unsigned(Address))+3);
		end if;
		
		if rising_edge(clk) and MemRead = '0' and MemWrite = '1' then 
			memory(to_integer(unsigned(Address))) <= WriteData(31 downto 24);
			memory(to_integer(unsigned(Address))+1) <= WriteData(23 downto 16);
			memory(to_integer(unsigned(Address))+2) <= WriteData(15 downto 8);
			memory(to_integer(unsigned(Address))+3) <= WriteData(7 downto 0);
		end if;
	end process;
end Behavioral;

