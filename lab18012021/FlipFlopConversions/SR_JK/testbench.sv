// Code your testbench here
// or browse Examples
module jkff_tb();
  reg j,k,clk,rst;
  wire q,qb;
  jkff U0(q,qb,j,k,clk,rst);
    always #5 clk=!clk;
  initial begin
      $dumpfile("dump.vcd");
      $dumpvars;
      clk=1;rst=1;#10;
      rst=0;j=0;k=0;#20;      
      j=0;k=1;#20;
      j=1;k=0;#20;
      j=1;k=1;#20;
    end
endmodule
