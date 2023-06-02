
-- VHDL Instantiation Created from source file signextend.vhd -- 06:08:08 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT signextend
	PORT(
		In_Sign : IN std_logic_vector(15 downto 0);          
		Out_Sign : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_signextend: signextend PORT MAP(
		In_Sign => ,
		Out_Sign => 
	);


