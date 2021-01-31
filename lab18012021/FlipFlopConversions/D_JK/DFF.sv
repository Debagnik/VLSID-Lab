// Code your design here
module DFF(output Q,Qbar, input D,clk,rst);
  reg Q,Qbar;
  assign Qbar=!Q;
  always @(posedge clk) 
  begin
    if(rst==1'b1)
      Q = 1'b0; 
    else 
      Q = D; 
  end
endmodule