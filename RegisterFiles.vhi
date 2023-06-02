
-- VHDL Instantiation Created from source file RegisterFiles.vhd -- 06:05:41 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RegisterFiles
	PORT(
		Read_Register1 : IN std_logic_vector(4 downto 0);
		Read_Register2 : IN std_logic_vector(4 downto 0);
		Write_Register : IN std_logic_vector(4 downto 0);
		Write_data : IN std_logic_vector(31 downto 0);
		RegWrite : IN std_logic;
		clk : IN std_logic;          
		Read_Data1 : OUT std_logic_vector(31 downto 0);
		Read_Data2 : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_RegisterFiles: RegisterFiles PORT MAP(
		Read_Register1 => ,
		Read_Register2 => ,
		Write_Register => ,
		Write_data => ,
		RegWrite => ,
		Read_Data1 => ,
		Read_Data2 => ,
		clk => 
	);


