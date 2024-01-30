module arraymul4x4_tb();
  reg [3:0] a, b;
  wire [7:0] res;
  
  arraymul4x4 mul(a,b,res);
  
  initial begin
    a = 1; b = 0; #30;
    a = 7; b = 5; #30;
    a = 8; b = 9; #30;
    a = 4'hf; b = 4'hf;#30;
    $finish;
  end
endmodule
