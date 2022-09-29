`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:17:56 09/29/2022
// Design Name:   mux4x4
// Module Name:   /home/zeeshan/Desktop/MTP/Projects/ArithmeticUnits/mux4x4TEST.v
// Project Name:  ArithmeticUnits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mux4x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mux4x4TEST;

	// Inputs
	reg [3:0] M;
	reg [3:0] Q;

	// Outputs
	wire [7:0] out;
	wire [7:0] sout1;
	wire [7:0] sout2;
	wire [7:0] sout3;
	wire [7:0] sout4;
	wire [7:0] sout5;
	wire [7:0] sout6;
	wire [7:0] sout7;
	wire [7:0] sout8;
	wire [7:0] eout1;
	wire [7:0] eout2;
	wire [7:0] eout3;
	wire [7:0] eout4;
	wire [7:0] eout5;
	wire [7:0] eout6;
	wire [7:0] eout7;
	wire [7:0] eout8;

	// Instantiate the Unit Under Test (UUT)
	mux4x4 uut (
		.M(M), 
		.Q(Q), 
		.out(out), 
		.sout1(sout1), 
		.sout2(sout2), 
		.sout3(sout3), 
		.sout4(sout4), 
		.sout5(sout5), 
		.sout6(sout6), 
		.sout7(sout7), 
		.sout8(sout8), 
		.eout1(eout1), 
		.eout2(eout2), 
		.eout3(eout3), 
		.eout4(eout4), 
		.eout5(eout5), 
		.eout6(eout6), 
		.eout7(eout7), 
		.eout8(eout8)
	);

	initial begin
		// Initialize Inputs
		M = -5;
		Q = 6;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

