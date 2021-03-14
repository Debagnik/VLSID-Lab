// Code your testbench here
// or browse Examples
module traffic_light_test;
  reg clock,reset;
  wire [2:0] north,east,south,west;
  traffic_light tt(north,east,south,west,clock,reset);
  always #10 clock=!clock;
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    clock=0;reset=1;
    #10 reset=0;
  end
endmodule