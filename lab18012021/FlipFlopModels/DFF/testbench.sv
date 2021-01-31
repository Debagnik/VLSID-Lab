// Code your testbench here
// or browse Examples
module DFF_tb;
  reg D;
  reg clk;
  reg reset;
  wire Q,Qbar;
  DFF dff(Q,Qbar,D,clk,reset);
  initial begin
    clk=0;
    forever #5 clk = ~clk;  
  end 
  initial begin 
    $dumpfile("dump.vcd"); 
    $dumpvars;
    reset=1;
    D = 0;
    #50;
    reset=0;
    D = 1;
    #50;
    D = 0;
    #50;
    D = 1;
  end 
endmodule 