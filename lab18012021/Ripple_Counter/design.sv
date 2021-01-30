  // Code your design here
`include "JKFF.sv"
module Ripple(output [2:0]Q, input clk,rst);
  wire clk0,clk1,clk2;
  jkff jk0(Q[0],clk0,1,1,clk,rst);
  jkff jk1(Q[1],clk1,1,1,clk0,rst);
  jkff jk2(Q[2],clk2,1,1,clk1,rst);
endmodule