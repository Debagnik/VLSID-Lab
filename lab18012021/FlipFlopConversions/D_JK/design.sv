// Code your design here
`include "DFF.sv"
module jkff(output Q,Qbar, input J,K,clk,rst);
  assign Q=!Qbar;
  wire w0,w1,w2,w3,w4;
  and g0(w0,J,Qbar);
  not g1(w1,K);
  and g2(w2,w1,Q);
  or g3(w3,w0,w2);
  DFF g4(Q,Qbar,w3,clk,rst);
endmodule