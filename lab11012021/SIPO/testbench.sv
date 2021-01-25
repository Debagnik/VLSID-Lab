// Code your testbench here
// or browse Examples
module testbench();
  reg in,clk;
  wire [3:0]out;
  sipo a(in,clk,out);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor($time,"in%b,clk%b,out%b",in,clk,out);
  end
  initial begin
    clk = 1'b0;
    forever #5 clk =~ clk;
  end
  initial begin
    in=1;
    #10 in=0;
    #10 in=1;
    #20 in=0;
    #30 in=1;
    #40 $finish;
  end
endmodule