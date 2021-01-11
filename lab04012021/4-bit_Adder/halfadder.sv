//File: Halfadder.sv 
module halfadder(output sum,carry, input A,B);
  xor summer(sum,A,B);
  and car(carry,A,B);
endmodule