module traffic_light(output [2:0] north,east,south,west, input clock,reset);
  reg [2:0] north,east,south,west;
  reg [2:0] state;
  reg [2:0] count;
  parameter n_g = 3'b000,n_y = 3'b001,e_g = 3'b010,e_y = 3'b011,s_g = 3'b100,s_y = 3'b101,w_g = 3'b110,w_y = 3'b111;
  parameter red = 3'b100, yellow = 3'b010, green = 3'b001;
  always @(posedge clock or posedge reset) begin
    if(reset) begin
      count=0;
      state=n_g;
    end
    else if(count==7) begin
      case(state)
        n_g: begin state=n_y; count=0; end
        e_g: begin state=e_y; count=0; end
        s_g: begin state=s_y; count=0; end
        w_g: begin state=w_y; count=0; end
        //default: begin state=n_y; count=0; end
      endcase
    end
    else if(count==3) begin
      case(state)
        n_y: begin state=e_g; count=0; end
        e_y: begin state=s_g; count=0; end
        s_y: begin state=w_g; count=0; end
        w_y: begin state=n_g; count=0; end
      endcase
    end
    count=count+1;
  end
  always@(state) begin
    case(state)
      n_g: begin north=green; east=red; south=red; west=red; end
      n_y: begin north=yellow; east=red; south=red; west=red; end
      e_g: begin north=red; east=green; south=red; west=red; end
      e_y: begin north=red; east=yellow; south=red; west=red; end
      s_g: begin north=red; east=red; south=green; west=red; end
      s_y: begin north=red; east=red; south=yellow; west=red; end
      w_g: begin north=red; east=red; south=red; west=green; end
      w_y: begin north=red; east=red; south=red; west=yellow; end
      default: begin north=green; east=red; south=red; west=red; end
    endcase
  end
endmodule
