// Code your testbench here
// or browse Examples
module Ripple_tb;
  reg clk,reset;
  wire [2:0]Q;
  Ripple r1(Q, clk,reset);
  always #5 clk =! clk;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk = 0;reset=1;
    #5 reset=0;
  end
endmodule