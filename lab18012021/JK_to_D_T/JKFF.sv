// Code your design here
module jkff(output Q,Qbar,input J,K,clock,reset);
  reg Q, Qbar;
  always@(posedge clock or posedge reset) begin
    if(reset)
      Q = 0;
    else
      case({J,K})
        2'b00:begin Q = Q; Qbar = !Q;end
        2'b01:begin Q = 0; Qbar = !Q;end
        2'b10:begin Q = 1; Qbar = !Q;end
        2'b11:begin Q = !Q; Qbar = !Q;end
      endcase
  end
endmodule
