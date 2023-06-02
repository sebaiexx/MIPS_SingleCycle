library IEEE;
use ieee.STD_LOGIC_unsigned.ALL;
use ieee.STD_LOGIC_arith.ALL;
use ieee.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_1164.ALL;
 
ENTITY ALUTest IS
END ALUTest;
 
ARCHITECTURE behavior OF ALUTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         a_ALU : IN  std_logic_vector(31 downto 0);
         b_ALU : IN  std_logic_vector(31 downto 0);
         operationALU : IN  std_logic_vector(3 downto 0);
         zeroALU : OUT  std_logic;
         result : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal b_ALU : std_logic_vector(31 downto 0) := (others => '0');
   signal operationALU : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal zeroALU : std_logic;
   signal result : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          a_ALU => a_ALU,
          b_ALU => b_ALU,
          operationALU => operationALU,
          zeroALU => zeroALU,
          result => result
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	



      a_ALU <= x"11001100";
		b_ALU <= x"10101010";
		operationALU <= "0000"; 
		wait for 100 ns;
		
		a_ALU <= x"11001100";
		b_ALU <= x"10101010";
		operationALU <= "0001"; 
		wait for 100 ns; 
		
		a_ALU <= x"00001010";
		b_ALU <= x"00000011";
		operationALU <= "0010"; 
		wait for 100 ns;
		
		a_ALU <= x"00001010";
		b_ALU <= x"00000011";
		operationALU <= "0110"; 
		wait for 100 ns;
		
		a_ALU <= x"00000001";
		b_ALU <= x"10000000";
		operationALU <= "0111"; 
		wait for 100 ns;
		
		a_ALU <= x"10000000";
		b_ALU <= x"00000001";
		operationALU <= "0111"; 
		wait for 100 ns;
		
		a_ALU <= x"11001100";
		b_ALU <= x"10101010";
		operationALU <= "1100"; 
		wait for 100 ns; 
		---------------------testing zero
		a_ALU <= x"01010101";
		b_ALU <= x"10101010";
		operationALU <= "0000"; 
		wait for 100 ns; 
		
		a_ALU <= x"10101010";
		b_ALU <= x"10101010";
		operationALU <= "0000"; 
		wait for 100 ns;


      wait;
   end process;

END;
