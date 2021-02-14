// Code your design here
module rom(output dout, input [7:0]din, input [9:0]addr, input clk,en);
  reg [7:0]dout;
  reg [7:0]raw[1023:0];
  always@(negedge clk) begin
    if(en == 1'b1) begin
      raw[addr] = din;
      dout = raw[addr];
    end
    else
      dout = 8'bz;
  end
endmodule
      
  