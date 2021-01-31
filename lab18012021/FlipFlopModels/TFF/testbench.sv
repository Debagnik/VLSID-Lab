// Code your testbench here
// or browse Examples
module test_tff;
  reg T,clock,reset;
  wire Q,Qbar;
  tff u1(Q,Qbar,T,clock,reset);
  always #5 clock=!clock;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clock = 0; T=0;
    reset = 1;
    #10 reset = 0;
    #20 T = 1;
  end
endmodule