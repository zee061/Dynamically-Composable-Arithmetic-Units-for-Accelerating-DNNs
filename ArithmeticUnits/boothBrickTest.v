`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:16:28 09/29/2022
// Design Name:   boothBrick2x2
// Module Name:   /home/zeeshan/Desktop/MTP/Projects/ArithmeticUnits/boothBrickTest.v
// Project Name:  ArithmeticUnits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: boothBrick2x2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module boothBrickTest;

	// Inputs
	reg [1:0] M;
	reg [1:0] Q;

	// Outputs
	wire [2:0] out;

	// Instantiate the Unit Under Test (UUT)
	boothBrick2x2 uut (
		.M(M), 
		.Q(Q), 
		.out(out)
	);

	initial begin
		// Initialize Inputs
		M = 2'b10;
		Q = 2'b01;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

