// Code your testbench here
// or browse Examples
module test_updown;
  reg clock,reset, updn;
  wire [3:0] count;
  updown ud1 (count, clock , reset, updn);
  always #5 clock = ! clock;
  initial begin
     $dumpfile("dump.vcd"); $dumpvars;
    clock =0;updn = 1; reset= 1;
    #10 reset = 0;
    #210 updn = 0;
  end
endmodule