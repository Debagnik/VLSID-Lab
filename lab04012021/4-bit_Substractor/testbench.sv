// file: testbence.sv for 4-bit substructor
module test_fourbitadder;
  wire [3:0]d;
  wire bout;
  reg [3:0]a,b;
  reg bin;
  fourbitsub fbs(d,bout,a,b,bin);
  reg [8:0]i;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    for(i=0;i<256;i=i+1) begin
      a = 1;
      b = i+1;
      bin = 1;
      #10;
    end
  end
endmodule
