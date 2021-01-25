// Code your design here
module siso(clk,rst,a,q);
input a;
input clk,rst;
output reg q;
    
  
 always@(posedge clk,posedge rst) begin
	if(rst==1)
		q <= 0;
	else
		q <= a;
end
endmodule