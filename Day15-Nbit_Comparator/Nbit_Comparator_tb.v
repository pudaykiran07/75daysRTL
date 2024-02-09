module Nbit_comparator_tb();

  reg [15:0] A, B;
wire A_grt_B, A_less_B, A_eq_B;

Nbit_Comparator comp(A, B, A_grt_B, A_less_B, A_eq_B);

initial begin
  $monitor("A = %0h, B = %0h -> A_grt_B = %0b, A_less_B = %0b, A_eq_B = %0b", A, B, A_grt_B, A_less_B, A_eq_B);
  repeat(5) begin
    A=$random; B=$random; #10;

  end
end
endmodule
