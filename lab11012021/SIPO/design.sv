// Code your design here
module dft(input in,clk,output out);
  reg out=0;
  always@(posedge clk)
    begin
      out <= in;
    end
endmodule

module sipo(input in,clk, output [3:0]out);
  dft bruh0(in,clk,out[3]);
  dft bruh1(out[3],clk,out[2]);
  dft bruh2(out[2],clk,out[1]);
  dft bruh3(out[1],clk,out[0]);
endmodule