module mealey_overlap_1101( output dout, input din,reset, clock); 
reg dout; 
 reg [1:0] state; 
 parameter S0=2'b00, S1=2'b01, S2=2'b10,S3=2'b11; 
 always @(posedge clock or posedge reset) begin 
 if(reset) begin 
 dout<= 0; 
 state<= S0; 
 end 
else begin 
 case(state) 
 S0: begin 
 if(din==1) 
 state<=S1; 
 else 
 state<=S0; 
 dout<=0; 
 end 
 S1: begin if(din) 
 state<=S2; 
 else 
 state<=S0; 
 dout<=0; 
 end 
 S2: begin if(din) 
 state<=S2; 
 else 
 state<=S3; 
 dout<= 0; 
 end 
 S3: begin if(din) begin 
 state<=S1; dout<=1; end 
 else begin 
 state<=S0; dout<=0; end 
 end 
 endcase 
end 
 end 
endmodule