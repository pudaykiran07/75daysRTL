module grey_binary_tb();
wire [3:0]binary;
reg [3:0]gray;

grey__binary dut(gray,binary);

initial 
begin
gray=4'b0000;
#20;
gray=4'b0100;
#20;
gray=4'b1001;
#20;
gray=4'b0110;
#20;
gray=4'b0111;
#20;
gray=4'b1111;
#20;
$finish;
end

endmodule
