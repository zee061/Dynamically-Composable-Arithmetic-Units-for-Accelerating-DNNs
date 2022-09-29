`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:11:13 09/29/2022 
// Design Name: 
// Module Name:    boothBrick2x2 
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
module mux2x1(
  input [1:0] A,A_,
  input q_1,q0,
  output [1:0] out
);
  wire en,s;
  reg [1:0] res;
  assign out = res;
  assign s = (!q_1) && q0;
  assign en = q0 ^ q_1;
  
  always @ (*) begin
    if (en) begin
      case (s)
        1'b0 : res = A;
        1'b1 : res = A_;
      endcase
    end
    else begin
        res = 2'b00;
    end
end
endmodule



module boothBrick2x2(
  input [1:0] M,Q,
  output [2:0] out
  
);
  wire [1:0] M_;
  wire [2:0] tmp;   //for holding shifted value of out2
  wire [2:0] s_out1;
  wire [1:0] out1,out2;
  assign M_ = ~M[1:0] + 1'b1;
  
  mux2x1 first ( .A(M), .A_(M_), .q_1(0), .q0(Q[0]),.out(out1) );
  mux2x1 second( .A(M), .A_(M_),.q_1(Q[0]),.q0(Q[1]),.out(out2) ); 
  

  assign s_out1 = out1[1] && !Q[0]? {1'b1,out1[1:0]} : {1'b0,out1[1:0]} ;
  assign tmp = out2 << 1;
  assign out = s_out1 + tmp;
endmodule