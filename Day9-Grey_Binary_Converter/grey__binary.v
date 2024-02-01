module grey__binary(input [3:0]gray,output [3:0] binary);
genvar i;
  generate
    for(i=0;i<4;i=i+1) 
    begin
      assign binary[i] = ^(gray >> i);
    end
  endgenerate
endmodule
