
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY TESTADD IS
END TESTADD;
 
ARCHITECTURE behavior OF TESTADD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Add
    PORT(
         A_add : IN  std_logic_vector(31 downto 0);
         B_add : IN  std_logic_vector(31 downto 0);
         result_add : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_add : std_logic_vector(31 downto 0) := (others => '0');
   signal B_add : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal result_add : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Add PORT MAP (
          A_add => A_add,
          B_add => B_add,
          result_add => result_add
        );

   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	



      A_add <= x"11001010";
		B_add <= x"10010100";
		      wait for 100 ns;	
	   A_add <= x"10010100";
		B_add <= x"10011110";
		      wait for 100 ns;	


      wait;
   end process;

END;
