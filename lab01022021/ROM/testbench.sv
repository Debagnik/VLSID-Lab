// Code your testbench here
// or browse Examples
module rom_tb;
  reg en,clk;
  reg [7:0]din;
  reg [9:0]addr;
  wire [7:0]dout;
  rom r2(dout,din,addr,clk,en);
  always #5 clk=!clk;
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    clk=0;en=1;
    addr=8'ha;din=8'h14;#20;
    addr=8'hff;din=8'h32;#20;
    addr=8'h5;din=8'hc5;#20;
    en=0;#20;
    $finish;
  end
endmodule