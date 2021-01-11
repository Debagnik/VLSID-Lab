// Design.sv for 4-bit adder
`include "fulladder.sv"
module fourbitadder(output [3:0]s,output cout,input [3:0]A,B, input cin);
  wire c1,c2,c3;
  
  fulladder fa0(s[0],c1,cin,A[0],B[0]);
  fulladder fa1(s[1],c2,c1,A[1],B[1]);
  fulladder fa2(s[2],c3,c2,A[2],B[2]);
  fulladder fa3(s[3],cout,c3,A[3],B[3]);
endmodule