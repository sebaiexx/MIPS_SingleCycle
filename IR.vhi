
-- VHDL Instantiation Created from source file IR.vhd -- 06:35:53 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IR
	PORT(
		AddressI : IN std_logic_vector(31 downto 0);
		Clock : IN std_logic;          
		Instruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IR: IR PORT MAP(
		AddressI => ,
		Instruction => ,
		Clock => 
	);


