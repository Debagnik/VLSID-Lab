// Code your testbench here
// or browse Examples
module siso_tb;
reg a;
reg clk,rst;
wire q;
   
siso dut(clk,rst,a,q);
  initial begin
	clk <= 0;
  forever #100 clk= ~clk;
end

initial begin
   rst = 1;   a <= 0;
   $monitor(" T=%0t, rst=%b  a=%0b, q=%0b ", $time,rst,a,q);
  #100 rst = 1;   a <= 1;
   $monitor(" T=%0t, rst=%b  a=%0b, q=%0b ", $time,rst,a,q);
   #200 rst = 0;   a <= 1;
   $monitor(" T=%0t, rst=%b  a=%0b, q=%0b ", $time,rst,a,q);
   #100 rst = 0;   a <= 0;
   $monitor(" T=%0t, rst=%b  a=%0b, q=%0b ", $time,rst,a,q);
   #1000 $finish;  
end
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
  end
endmodule
