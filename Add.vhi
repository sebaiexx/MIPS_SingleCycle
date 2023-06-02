
-- VHDL Instantiation Created from source file Add.vhd -- 06:13:14 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Add
	PORT(
		A_add : IN std_logic_vector(31 downto 0);
		B_add : IN std_logic_vector(31 downto 0);          
		result_add : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Add: Add PORT MAP(
		A_add => ,
		B_add => ,
		result_add => 
	);


