//File: fullsubtractor.sv
`include "halfsubtractor.sv"

module fullsub(output diff,bout, input P,Q,bin);
  wire d1,b1,b2;
  halfsub hs1(d1,b1,P,Q);
  halfsub hs2(diff,b2,d1,bin);
  or o(bout,b2,b1);
endmodule