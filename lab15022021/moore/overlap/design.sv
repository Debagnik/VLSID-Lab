 module moore_1011_overLAP(output dout,input din,clock,reset);
 reg dout;
 reg [2:0]state;
 parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
 always@(posedge clock or posedge reset) begin
 if(reset) begin
 dout<=0;
 state<=s0;
 end
 else begin
 case(state)
 s0:begin dout<=0;
 if(din==1)
 state<=s1;
 else
 state<=s0;
 end
 s1:begin dout<=0;
 if(din==1)
 state<=s1;
 else
 state<=s2;
 end
 s2:begin dout<=0;
 if(din==1)
 state<=s3;
 else
 state<=s2;
 end
 s3:begin dout<=0;
 if(din==1)
 state<=s4;
 else
 state<=s2;
 end
 s4:begin dout<=1;
 if(din==1)
 state<=s1;
 else
 state<=s2;
 end
 default:begin dout<=0;state<=s0;end
 endcase
 end
 end
endmodule