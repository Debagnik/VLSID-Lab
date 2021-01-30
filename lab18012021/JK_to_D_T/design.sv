// Code your design here
// D flipflops
`include "JKFF.sv"
module dff(output Q,Qbar, input D,clk,rst);
  wire Dbar;
  not v0(Dbar,D);
  jkff jk0(Q, Qbar,D,Dbar,clk,rst);
endmodule

//T flipflops
module tff(output Q,Qbar, input T,clk,rst);
  jkff jk1(Q,Qbar,T,T,clk,rst);
endmodule