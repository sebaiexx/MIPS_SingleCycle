
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

 
ENTITY addfourtest IS
END addfourtest;
 
ARCHITECTURE behavior OF addfourtest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AddFour
    PORT(
         A_addfour : IN  std_logic_vector(31 downto 0);
         Result_addfour : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A_addfour : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Result_addfour : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AddFour PORT MAP (
          A_addfour => A_addfour,
          Result_addfour => Result_addfour
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	



      -- insert stimulus here 
		A_addfour <= x"11001100";
		wait for 100 ns;
		A_addfour <= x"00001010";
      wait for 100 ns;
		wait;
   end process;

END;
