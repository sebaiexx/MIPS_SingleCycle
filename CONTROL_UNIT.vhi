
-- VHDL Instantiation Created from source file CONTROL_UNIT.vhd -- 06:11:44 06/09/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT CONTROL_UNIT
	PORT(
		OP : IN std_logic_vector(5 downto 0);          
		RegDst : OUT std_logic;
		ALUSrc : OUT std_logic;
		MemtoReg : OUT std_logic;
		RegWrite : OUT std_logic;
		MemRead : OUT std_logic;
		MemWrite : OUT std_logic;
		Branch : OUT std_logic;
		ALUop : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_CONTROL_UNIT: CONTROL_UNIT PORT MAP(
		OP => ,
		RegDst => ,
		ALUSrc => ,
		MemtoReg => ,
		RegWrite => ,
		MemRead => ,
		MemWrite => ,
		Branch => ,
		ALUop => 
	);


