// Code your testbench here
// or browse Examples
module test_srff;
  reg S,R,clock,reset;
  wire Q,Qbar;
  srff u1(Q,Qbar,S,R,clock,reset);
  always #5 clock=!clock;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clock = 0; S = 0; R = 0;
    reset = 1;
    #10 reset = 0;
    #20 S = 0; R = 1;
    #20 S = 1; R = 0;
    #20 S = 1; R = 1;
  end
endmodule