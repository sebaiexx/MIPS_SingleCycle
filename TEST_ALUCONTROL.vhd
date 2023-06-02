
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY TEST_ALUCONTROL IS
END TEST_ALUCONTROL;
 
ARCHITECTURE behavior OF TEST_ALUCONTROL IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Control
    PORT(
         Alu_op : IN  std_logic_vector(1 downto 0);
         F_Field : IN  std_logic_vector(5 downto 0);
         operation : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Alu_op : std_logic_vector(1 downto 0) := (others => '0');
   signal F_Field : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal operation : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Control PORT MAP (
          Alu_op => Alu_op,
          F_Field => F_Field,
          operation => operation
        );

   -- Clock process definitions
   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

   Alu_op <="00";
	      wait for 100 ns;	
   Alu_op <= "00";
	F_Field <= "001100";
		      wait for 100 ns;
    Alu_op <= "01";
	 F_Field <= "001100";
		      wait for 100 ns;				
Alu_op <= "10";
	F_Field <= "000000";
		      wait for 100 ns;
	Alu_op <= "10";
	F_Field <= "000010";
		      wait for 100 ns;
				Alu_op <= "11";
	F_Field <= "000010";
		      wait for 100 ns;
				Alu_op <= "10";
	F_Field <= "000101";
		      wait for 100 ns;
				Alu_op <= "10";
	F_Field <= "001010";
		      wait for 100 ns;
				Alu_op <= "11";
	F_Field <= "001010";
		      wait for 100 ns;
      wait;
   end process;

END;
