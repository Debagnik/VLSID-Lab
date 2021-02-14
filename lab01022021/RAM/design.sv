// Code your design here
module ram(output [7:0]dout, input [7:0]din, input [9:0]addr, input clk,en,rw);
  reg [7:0]dout;
  reg [7:0]raw[1023:0];
  always@(negedge clk) begin
    if(en == 1'b1) begin
      if(rw == 1'b1) begin
        raw[addr] = din;
      	dout <= 8'bx;
      end
      else
        dout <= raw[addr];
      end
    else
      dout <= 8'bz;
  end
endmodule