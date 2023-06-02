
-- VHDL Instantiation Created from source file Data_Memory.vhd -- 06:11:15 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Data_Memory
	PORT(
		Address : IN std_logic_vector(31 downto 0);
		WriteData : IN std_logic_vector(31 downto 0);
		MemRead : IN std_logic;
		MemWrite : IN std_logic;
		Clk : IN std_logic;          
		ReadData : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Data_Memory: Data_Memory PORT MAP(
		Address => ,
		WriteData => ,
		ReadData => ,
		MemRead => ,
		MemWrite => ,
		Clk => 
	);


