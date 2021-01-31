// Code your testbench here
// or browse Examples
module test_jkff;
  reg J,K,clock,reset;
  wire Q,Qbar;
  jkff u1(Q,Qbar,J,K,clock,reset);
  always #5 clock=!clock;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clock = 0; J = 0; K = 0;
    reset = 1;
    #10 reset = 0;
    #20 J = 0; K = 1;
    #20 J = 1; K = 0;
    #20 J = 1; K = 1;
  end
endmodule