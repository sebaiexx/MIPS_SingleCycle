`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:53:59 06/08/2021
// Design Name:   AddFour
// Module Name:   D:/MahmoudErfanMohamed_18102150/addfourtest.v
// Project Name:  MahmoudErfanMohamed_18102150
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: AddFour
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module addfourtest;

	// Inputs
	reg [31:0] A_addfour;

	// Outputs
	wire [31:0] Result_addfour;

	// Instantiate the Unit Under Test (UUT)
	AddFour uut (
		.A_addfour(A_addfour), 
		.Result_addfour(Result_addfour)
	);

	initial begin
		// Initialize Inputs
		A_addfour = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

