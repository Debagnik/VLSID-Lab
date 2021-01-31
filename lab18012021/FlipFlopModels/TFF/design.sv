// Code your design here
module tff(output Q,Qbar,input T,clock,reset);
  reg Q;
  assign Qbar=!Q;
  always@(posedge clock or posedge reset) begin
    if(reset)
      Q <= 0;
    else if(T==1)
      Q = !Q;
    else if(T==0)
      Q = Q; 
    else
      Q = 1'bx;
  end
endmodule