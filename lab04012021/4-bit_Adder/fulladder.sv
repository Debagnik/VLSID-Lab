//File design.sv for Full adder
`include "halfadder.sv"

module fulladder(output s1,cout, input cin,P,Q);
  wire s2,c2,c1;
  halfadder ha1(s2,c1,P,Q);
  halfadder ha2(s1,c2,cin,s2);
  or or1(cout,c1,c2);
endmodule