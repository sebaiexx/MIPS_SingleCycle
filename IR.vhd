
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;
entity IR is Port( AddressI : in  STD_LOGIC_VECTOR (31 downto 0);
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0);
           Clock : in  STD_LOGIC);
end IR;

architecture Behavioral of IR is
type A is array (0 to 127) of STD_LOGIC_VECTOR (7 downto 0);
signal memory : A := (
								x"20",x"02",x"00",x"00", x"20",x"08",x"00",x"04",
								x"20",x"86",x"00",x"00", x"20",x"A7",x"00",x"00",
								x"20",x"09",x"00",x"01", x"8C",x"C3",x"00",x"00",
								x"20",x"42",x"00",x"01", x"AC",x"E3",x"00",x"00",
								x"00",x"C8",x"30",x"20", x"00",x"E8",x"38",x"20",
								x"00",x"69",x"50",x"2A", x"11",x"40",x"FF",x"F8",
								x"00",x"00",x"00",x"00", x"00",x"49",x"10",x"22",
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
process(AddressI,Clock)
	begin
		if rising_edge(Clock) then
			Instruction(31 downto 24) <= memory(to_integer(unsigned(AddressI)));
			Instruction(23 downto 16) <= memory(to_integer(unsigned(AddressI))+1);
			Instruction(15 downto 8) <= memory(to_integer(unsigned(AddressI))+2);
			Instruction(7 downto 0) <= memory(to_integer(unsigned(AddressI))+3);
		end if;
	end process;


end Behavioral;

