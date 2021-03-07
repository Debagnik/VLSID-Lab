module moore_1011_overLAP_test;
 reg din, reset, clock;
 wire dout;
 moore_1011_overLAP m1(dout,din,clock,reset);
 always #10 clock=!clock;
 initial begin
 $dumpfile("dump.vcd"); $dumpvars;
 clock=0;
 reset=1;
 din=1;
 #20 reset=0;din=0;
 #20 din=1;
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