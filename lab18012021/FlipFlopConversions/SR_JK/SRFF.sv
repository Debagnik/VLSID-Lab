// Code your design here
module srff(output Q,Qbar,input S,R,clock,reset);
  reg Q;
  assign Qbar=!Q;
  always@(posedge clock or posedge reset) begin
    if(reset)
      Q=0;
    else if({S,R} == 2'b00)
      Q=Q;
    else if({S,R} == 2'b01)
      Q=0;
    else if({S,R} == 2'b10)
      Q=1;
    else if({S,R} == 2'b11)
      Q=1'bz;
    else
      Q=1'bx;
  end
endmodule
      