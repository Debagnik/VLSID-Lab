// Code your testbench here
// File Testbench.sv for full adder
module test_fulladder;
  wire sum,carry;
  reg in1,in2,cin;
  fulladder a1(sum,carry,cin,in1,in2);
  //halfaddef ha2(.carry(car),.sum(s),.A(in2),.B(in2))
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    // t=0
    in1=0; in2=0; cin=0;
    // t=10ns
    #10 in1=0; in2=1; cin=0;
    // t=20ns
   	#10 in1=1; in2=0; cin=0;
    // t=30ns
    #10 in1=1; in2=1; cin=0;
    // t=40ns
    #10 in1=0; in2=0; cin=1;
    // t=50ns
    #10 in1=0; in2=1; cin=1;
    // t=60ns
    #10 in1=1; in2=0; cin=1;
    // t=70
    #10 in1=1; in2=1; cin=1;
  end
endmodule