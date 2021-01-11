// File halfsubtractor.sv
module halfsub(output diff,bor, input A,B);
  wire a;
  xor x1(diff,A,B);
  not g(a,A);
  and a1(bor,a,B);
endmodule