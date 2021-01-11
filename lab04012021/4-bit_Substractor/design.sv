//File design.sv for 4-bit substractor
`include "fullsubtractor.sv"

module fourbitsub(output [3:0]D,output bout,input [3:0]A,B, input bin);
  
  wire b1,b2,b3;
  fullsub fs0(D[0],b1,A[0],B[0],bin);
  fullsub fs1(D[1],b2,A[1],B[1],b1);
  fullsub fs2(D[2],b3,A[2],B[2],b2);
  fullsub fs3(D[3],bout,A[3],B[3],b3);
endmodule