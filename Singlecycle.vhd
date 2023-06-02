
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Singlecycle is
    Port ( clk : in  STD_LOGIC);
end Singlecycle;

architecture Behavioral of Singlecycle is
     COMPONENT PC
	PORT(
		Pc_In : IN std_logic_vector(31 downto 0):= x"00000000";
		clk : IN std_logic;          
		Pc_Out : OUT std_logic_vector(31 downto 0):= x"00000000"
		);
	END COMPONENT;
	
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
	
		COMPONENT Mux2x1_32
	PORT(
		AM : IN std_logic_vector(31 downto 0);
		BM : IN std_logic_vector(31 downto 0);
		SM : IN std_logic;          
		OUTM : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
		COMPONENT shiftlift2
	PORT(
		In_Shift : IN std_logic_vector(31 downto 0);          
		Out_Shift : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	COMPONENT signextend
	PORT(
		In_Sign : IN std_logic_vector(15 downto 0);          
		Out_Sign : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
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
	
	COMPONENT Add
	PORT(
		A_add : IN std_logic_vector(31 downto 0);
		B_add : IN std_logic_vector(31 downto 0);          
		result_add : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	
	
	
	COMPONENT AddFour
	PORT(
		A_addfour : IN std_logic_vector(31 downto 0);          
		Result_addfour : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	
	
	COMPONENT ALU
	PORT(
		a_ALU : IN std_logic_vector(31 downto 0);
		b_ALU : IN std_logic_vector(31 downto 0);
		operationALU : IN std_logic_vector(3 downto 0);          
		zeroALU : OUT std_logic;
		result : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
	
	
		
COMPONENT ALU_Control
	PORT(
		Alu_op : IN std_logic_vector(1 downto 0);
		F_Field : IN std_logic_vector(5 downto 0);          
		operation : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT IR
	PORT(
		AddressI : IN std_logic_vector(31 downto 0);
		Clock : IN std_logic;          
		Instruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
signal pc4,jumpToPc,shift2jump,signExtended,Branch2ADD,Add4mux,addMux,
		 branch2Jump,regDst2Registers,memtoReg2Registers,
		 data1ToAlu,data2ToAlusrc,aluSrc2Alu,aluResult,memoryData2Mux: STD_LOGIC_VECTOR (31 downto 0):= x"00000000";
signal Instr : STD_LOGIC_VECTOR (31 downto 0):= x"00000000";

signal regDst, aluSrc, memtoReg, regWrite, memRead, memWrite, branch, zeroand : STD_LOGIC;

signal aluOp : STD_LOGIC_VECTOR (1 downto 0) := "00";

signal aluControl2Alu : STD_LOGIC_VECTOR (3 downto 0) := "0000";



	
	
	

begin
programcounter : PC port map
(
	Pc_In => jumpToPc,
	clk => clk,
	Pc_Out => pc4
	
);

pcplusfour: AddFour port map
(
      A_addfour => pc4,     
		Result_addfour =>Add4mux);
		
ctrl : CONTROL_UNIT port map(
	OP => Instr(31 downto 26),
   RegDst => regDst,
   ALUSrc => aluSrc,
   MemtoReg => memtoReg,
   RegWrite => regWrite,
   MemRead => memRead,
   MemWrite => memWrite,
   Branch => branch,
   ALUOp => aluOp);
	
Instruction_Memory : IR port map(
	AddressI => pc4,
		Clock =>   clk,      
		Instruction => Instr );
		
ShiftJump : shiftlift2 port map(
	
		In_Shift(25 downto 0) =>  Instr(25 downto 0),
      In_Shift(31 downto 26) => "000000",
		Out_Shift => shift2jump);
		
SIGN_EXTEND : signextend port map(
      In_Sign =>instr(15 downto 0),
		Out_Sign => signExtended);

ShiftTObranch : shiftlift2 port map(
 In_Shift => signExtended,
 Out_Shift => Branch2ADD);
 
 ADD2: Add port map(
      A_add =>Add4mux,
		B_add =>Branch2ADD ,        
		result_add=> addMux);
Branching_Mux : Mux2x1_32 port map(
AM =>Add4mux,
BM => addMux,
SM => branch and zeroand,
OUTM => branch2Jump);

Jumpmux : Mux2x1_32 port map(


AM =>branch2Jump,
BM(27 downto 0) => shift2jump(27 downto 0),
BM(31 downto 28) => Add4mux(31 downto 28),
SM => '0',
OUTM => jumpToPc);

regDstM : Mux2x1_32 port map
(
	AM(4 downto 0) => Instr(20 downto 16),
	AM(31 downto 5) => "000000000000000000000000000",
	BM(4 downto 0) => Instr(15 downto 11),
	BM(31 downto 5) => "000000000000000000000000000",
	SM => regDst,
	OutM => regDst2Registers
);

registers : RegisterFiles port map
(
	Read_Register1 => Instr(25 downto 21),
	Read_Register2 => Instr(20 downto 16),
	Write_Register => regDst2Registers(4 downto 0),
	Write_data => memtoReg2Registers,
	RegWrite => regWrite,
	Read_Data1 => data1ToAlu,
	Read_Data2 => data2ToAlusrc,
	clk => clk
);

aluSrcM : Mux2x1_32 port map
(
	AM => data2ToAlusrc,
	BM => signExtended,
	SM => aluSrc,
	OutM => aluSrc2Alu
);

alu_Unit : ALU port map
(
	a_ALU => data1ToAlu,
	b_ALU => aluSrc2Alu,
	operationALU => aluControl2Alu,
	zeroALU => zeroand,
	result => aluResult);

control_Alu : ALU_Control port map
(
	Alu_op => aluOp,
	F_Field => Instr(5 downto 0),
	operation => aluControl2Alu
);

memory : Data_Memory port map
(
	Address => aluResult,
	WriteData => data2ToAlusrc,
	ReadData => memoryData2Mux,
	MemRead => memRead,
	MemWrite => memWrite,
	Clk => clk
);

memtoRegMux : Mux2x1_32 port map
(
	AM => aluResult,
	BM => memoryData2Mux,
	SM => memtoReg,
	OutM => memtoReg2Registers
);

end Behavioral;

