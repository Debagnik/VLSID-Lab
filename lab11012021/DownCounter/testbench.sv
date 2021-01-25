// Code your testbench here
// or browse Examples
module test_downcount;
  reg clock,reset;
  wire [3:0] count;
  downcount u1 (count, clock , reset);
  always #5 clock = ! clock;
  initial begin
     $dumpfile("dump.vcd"); $dumpvars;
    clock =0; reset= 1;
    #10 reset = 0;
  end 
endmodule