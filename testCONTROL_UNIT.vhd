LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 

 
ENTITY testCONTROL_UNIT IS
END testCONTROL_UNIT;
 
ARCHITECTURE behavior OF testCONTROL_UNIT IS 
 

 
    COMPONENT CONTROL_UNIT
    PORT(
         OP : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         RegWrite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWrite : OUT  std_logic;
         Branch : OUT  std_logic;
         ALUop : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal ALUSrc : std_logic;
   signal MemtoReg : std_logic;
   signal RegWrite : std_logic;
   signal MemRead : std_logic;
   signal MemWrite : std_logic;
   signal Branch : std_logic;
   signal ALUop : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CONTROL_UNIT PORT MAP (
          OP => OP,
          RegDst => RegDst,
          ALUSrc => ALUSrc,
          MemtoReg => MemtoReg,
          RegWrite => RegWrite,
          MemRead => MemRead,
          MemWrite => MemWrite,
          Branch => Branch,
          ALUop => ALUop
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	



op <= "000000"; --re-format
		wait for 100 ns;

		
		op <= "100011"; --lw
		wait for 100 ns;	
		
		
		op <= "101011"; --sw
		wait for 100 ns;
	
		
		op <= "000100"; --beq
		wait for 100 ns;
     
		op <= "001000"; --addi
		wait for 100 ns;
		
		op <= "111111"; --others
		wait for 100 ns;
      wait;
   end process;

END;
