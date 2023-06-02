
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity ALU_Control is
    Port ( Alu_op  : in  STD_LOGIC_VECTOR (1 downto 0);
           F_Field : in  STD_LOGIC_VECTOR (5 downto 0);
           operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control;

architecture Behavioral of ALU_Control is

begin
process(Alu_op,F_Field)
begin
case Alu_op is 
 when "00" =>
operation <= "0010";
when "01" =>
operation <= "0110";
when "10" => 
 case F_Field(3 downto 0 ) is
  when "0000" =>
  operation <= "0010";
  when "0010" =>
  operation <= "0110";
  when "0100" =>
  operation <= "0000";
  when "0101" =>
  operation <= "0001";
  when "1010" =>
  operation <= "0111";
  when others =>
  operation <= "0000";
  end case;
  when "11" =>
  case F_Field (3 downto 0) is 
  when "0010" =>
  operation <= "0110";
    when "1010" =>
  operation <= "0111";
    when others =>
  operation <= "0000";
  end case;
  when others => 
  operation <="0000";
  end case;
  end process;
end Behavioral;

