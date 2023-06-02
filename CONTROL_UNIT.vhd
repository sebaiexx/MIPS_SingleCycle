
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CONTROL_UNIT is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUop : out  STD_LOGIC_Vector(1 downto 0));
end CONTROL_UNIT;

architecture Behavioral of CONTROL_UNIT is

begin
process (OP)
begin
case OP is
	when "000000" =>
		RegDst <= '1';
	   ALUSrc <= '0';
      MemtoReg <= '0';
      RegWrite <= '1';
      MemRead <= '0';
      MemWrite <= '0';
      Branch <= '0';
      ALUOp <= "10";
	when "100011" =>
		RegDst <= '0';
	   ALUSrc <= '1';
      MemtoReg <= '1';
      RegWrite <= '1';
      MemRead <= '1';
      MemWrite <= '0';
      Branch <= '0';
      ALUOp <= "00";
	when "101011" =>
	   ALUSrc <= '1';
      RegWrite <= '0';
      MemRead <= '0';
      MemWrite <= '1';
      Branch <= '0';
      ALUOp <= "00";
	when "000100" =>
		ALUSrc <= '0';
      RegWrite <= '0';
      MemRead <= '0';
      MemWrite <= '0';
      Branch <= '1';
      ALUOp <= "01";
	when "001000" =>
		RegDst <= '0';
	   ALUSrc <= '1';
      MemtoReg <= '0';
      RegWrite <= '1';
      MemRead <= '0';
      MemWrite <= '0';
      Branch <= '0';
      ALUOp <= "00";
	when others => null;
end case;
end process;









end Behavioral;

