// Code your design here
module updown(output[3:0]count,input clock,reset,updn);
  reg [3:0]count;
  always @ (posedge clock) begin
    if (reset == 1)
      count = 0;
    else if(updn == 1)
      count = count + 1;
    else if(updn == 0)
      count = count - 1;
    else 
      count=15;
  end
endmodule