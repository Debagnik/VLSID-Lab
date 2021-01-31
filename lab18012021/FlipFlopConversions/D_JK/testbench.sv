// Code your testbench here
// or browse Examples
module DFF_tb;
  reg J,K;
  reg clk;
  reg reset;
  wire Q,Qbar;
  jkff ff0(Q,Qbar,J,K,clk,reset);
  initial begin
    clk=0;
    forever #5 clk = ~clk;  
  end 
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars;
    reset=1;
    J = 0;K = 0;
    #25;
    reset=0;
    #25;
    J = 0;K = 1;
    #25;
    J = 1;K = 0;
    #25
    J = 1;K = 1;
  end 
endmodule 