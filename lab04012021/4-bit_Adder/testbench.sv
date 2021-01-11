// testbench.sv for 4-bit adder
module test_fourbitadder;
  wire cout;
  wire [3:0]s;
  reg [3:0]a,b;
  reg cin;
  fourbitadder fba(s,cout,a,b,cin);
  reg [8:0]i;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    for(i=0;i<512;i=i+1) begin
      a=i;b=i+1;cin=0;
      #10;
    end
  end
endmodule