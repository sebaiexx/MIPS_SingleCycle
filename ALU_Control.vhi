
-- VHDL Instantiation Created from source file ALU_Control.vhd -- 06:16:23 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU_Control
	PORT(
		Alu_op : IN std_logic_vector(1 downto 0);
		F_Field : IN std_logic_vector(5 downto 0);          
		operation : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_ALU_Control: ALU_Control PORT MAP(
		Alu_op => ,
		F_Field => ,
		operation => 
	);


