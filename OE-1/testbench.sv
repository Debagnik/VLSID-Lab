module look_ahead_4bit_tb;
  reg [3:0] a,b;
reg cin;
  wire [3:0] sum;
wire cout;
 
look_ahead_4bit g1(.a(a), .b(b),.cin(cin),.sum(sum),.cout(cout));
 
initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
  a=0; b=0; cin=0;
  #10 a=4'b1011; b=4'b0011; cin=1'b0;
  #10 a=4'b0001; b=4'b0101; cin=1'b1;
  #10 a=4'b1000; b=4'b1001; cin=1'b0;
  #10 a=4'b0010; b=4'b0100; cin=1'b1;
end
 

endmodule