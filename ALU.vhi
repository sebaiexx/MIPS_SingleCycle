
-- VHDL Instantiation Created from source file ALU.vhd -- 06:14:45 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		a_ALU : IN std_logic_vector(31 downto 0);
		b_ALU : IN std_logic_vector(31 downto 0);
		operationALU : IN std_logic_vector(3 downto 0);          
		zeroALU : OUT std_logic;
		result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		a_ALU => ,
		b_ALU => ,
		operationALU => ,
		zeroALU => ,
		result => 
	);


