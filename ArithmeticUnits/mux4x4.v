`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:14:24 09/29/2022 
// Design Name: 
// Module Name:    mux4x4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux4x4(
  input [3:0] M,Q,
  output [7:0] out,
  output [7:0] sout1,sout2,sout3,sout4,sout5,sout6,sout7,sout8,
  output [7:0] eout1,eout2,eout3,eout4,eout5,eout6,eout7,eout8
  );
  wire [3:0] M_;
  wire [1:0] M0,M1,M0_,M1_;
  wire [1:0] out1,out2,out3,out4,out5,out6,out7,out8;
  
  assign M0 = M[1:0];
  assign M1 = M[3:2];
  assign M_ = ~M[3:0] + 1'b1;
  assign M0_ = M_[1:0];
  assign M1_ = M_[3:2];
  
  mux2x1 f1(.A(M0), .A_(M0_), .q_1(0), .q0(Q[0]), .out(out1));
  mux2x1 f2(.A(M0), .A_(M0_), .q_1(Q[0]),.q0(Q[1]),.out(out2));
  mux2x1 f3(.A(M0), .A_(M0_), .q_1(Q[1]),.q0(Q[2]),.out(out3));
  mux2x1 f4(.A(M0), .A_(M0_), .q_1(Q[2]),.q0(Q[3]),.out(out4));
  mux2x1 f5(.A(M1), .A_(M1_), .q_1(0),.q0(Q[0]),.out(out5));
  mux2x1 f6(.A(M1), .A_(M1_), .q_1(Q[0]),.q0(Q[1]),.out(out6));
  mux2x1 f7(.A(M1), .A_(M1_), .q_1(Q[1]),.q0(Q[2]),.out(out7));
  mux2x1 f8(.A(M1), .A_(M1_), .q_1(Q[2]),.q0(Q[3]),.out(out8));
  
  //shifting appropriately
  assign sout1 = out1;
  assign sout2 = out2 << 1;
  assign sout3 = out3 << 2;
  assign sout4 = out4 << 3;
  assign sout5 = out5 << 2;
  assign sout6 = out6 << 3;
  assign sout7 = out7 << 4;
  assign sout8 = out8 << 5;
  
  //sign extension
  assign eout1 = {6'b000000,sout1[1:0]};
  assign eout2 = {5'b00000,sout2[2:0]};
  assign eout3 = {4'b0000,sout3[3:0]};
  assign eout4 = {3'b000,sout4[4:0]};
  assign eout5 = out5[1] ? {4'b1111,sout5[3:0]} : {4'b0000,sout5[3:0]};
  assign eout6 = out6[1] ? {3'b111,sout6[4:0]} : {3'b000,sout6[4:0]};
  assign eout7 = out7[1] ? {2'b11,sout7[5:0]} : {2'b00,sout7[5:0]};
  assign eout8 = out8[1] ? {1'b1,sout8[6:0]} : {1'b0,sout8[6:0]};
  
  assign out = eout1 + eout2 + eout3 + eout4 + eout5 + eout6 + eout7 + eout8;
endmodule