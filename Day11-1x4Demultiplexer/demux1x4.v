module demux1x4(input [1:0] in,
  input  sel,
  output reg o0,o1,o2,o3);
    
  always @(*) begin
    case(in)
      2'h0: {o0,o1,o2,o3} = {sel,3'b0};
      2'h1: {o0,o1,o2,o3} = {1'b0,sel,2'b0};
      2'h2: {o0,o1,o2,o3} = {2'b0,sel,1'b0};
      2'h3: {o0,o1,o2,o3} = {3'b0,sel};
    endcase
  end
endmodule
