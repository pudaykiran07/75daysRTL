module priority_encoder_tb();
reg [3:0]in;
wire [1:0]out;
priority_encoder dut(in,out);
initial
begin
in=4'b0000;#20
in=4'b0001;#20
in=4'b0011;#20
in=4'b0101;#20
in=4'b1001;#20
$finish;
end
endmodule
