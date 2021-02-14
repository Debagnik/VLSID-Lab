// Code your testbench here
// or browse Examples
module ram_tb;
  reg en,rw,clk;
  reg [7:0]din;
  reg [9:0]addr;
  wire [7:0]dout;
  ram r1(dout,din,addr,clk,en,rw);
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clk=0;en=1;rw=1;
    addr=8'ha;din=8'h14;#20;
    addr=8'hff;din=8'h32;#20;
    rw=0;
    addr=8'ha;#20;
    addr=8'hff;#20;
    addr=8'h5;#20;
    en=0;#20;
  end
  always #5 clk=!clk;
endmodule