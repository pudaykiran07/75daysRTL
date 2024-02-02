module binary_grey_tb();
wire [3:0]grey;
reg [3:0]binary;

binary_grey dut(binary,grey);
initial 
begin
binary=4'b0000;
#20;
binary=4'b0100;
#20;
binary=4'b1001;
#20;
binary=4'b0110;
#20;
binary=4'b0111;
#20;
binary=4'b1111;
#20;
$finish;
end

endmodule
