
-- VHDL Instantiation Created from source file PC.vhd -- 05:53:14 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PC
	PORT(
		Pc_In : IN std_logic_vector(31 downto 0);
		clk : IN std_logic;          
		Pc_Out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_PC: PC PORT MAP(
		Pc_In => ,
		Pc_Out => ,
		clk => 
	);


