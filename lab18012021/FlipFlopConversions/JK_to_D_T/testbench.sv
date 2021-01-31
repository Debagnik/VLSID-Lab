// Code your testbench here
// or browse Examples
module tb;
  reg T,D0,clk,rst;
  wire Q0,Q0bar,Q1,Q1bar;
  dff df(Q0,Q0bar,D0,clk,rst);
  tff tf(Q1,Q1bar,T,clk,rst);
  always #5 clk =! clk;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 0;
    rst = 1;
    D0=0;T=0;
    #10;
    rst = 0;
    D0=0;T=1;
    #45;
    D0=1;T=0;
  end
endmodule