module mealey_non_overlap_1101_test;
reg din,reset, clock; 
 wire dout;
 mealey_non_overlap_1101 m1(dout, din,reset, clock); 
 always #10 clock =!clock; 
 initial begin
 $dumpfile("dump.vcd"); $dumpvars;
clock=0; 
 reset=1; 
 din=1; 
 #20 reset = 0; din = 1; 
 #20 din=0; 
 #20 din=1;
 #20 din=1;
 #20 din=0;
 #20 din=1; 
 #20 din=0; 
 #20 din=1; 
 #20 din=1; 
 #20 din=0;
 #20 din=1;
 #20 din=1; 
 #20 din=0; 
 #20 din=1;
 #20 din=0;
 end 
endmodule