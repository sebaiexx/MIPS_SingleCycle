
-- VHDL Instantiation Created from source file AddFour.vhd -- 06:14:07 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT AddFour
	PORT(
		A_addfour : IN std_logic_vector(31 downto 0);          
		Result_addfour : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_AddFour: AddFour PORT MAP(
		A_addfour => ,
		Result_addfour => 
	);


