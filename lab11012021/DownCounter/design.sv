// Code your design here
module downcount(output[3:0]count,input clock,reset);
  reg [3:0]count;
  always @ (posedge clock) begin
    if (reset == 1)
      count = 0;
    else
      count = count - 1;
  end
endmodule