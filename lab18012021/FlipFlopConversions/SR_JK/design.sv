// Code your design here
`include "SRFF.sv"
module jkff(output Q,Qbar,input J,K,clk,rst);
  wire w1,w2;
  and a1(w1,J,Qbar);
  and a2(w2,K,Q);
  srff L0(Q,Qbar,w1,w2,clk,rst);
endmodule