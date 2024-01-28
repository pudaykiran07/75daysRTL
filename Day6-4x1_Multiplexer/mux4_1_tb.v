module mux4_1_tb();
reg [3:0]in;
reg [1:0]sel;
wire out;

mux4_1 dut(in,sel,out);

initial begin
in=0;sel=0;
#10;
in=4'b1010;
sel=2'b01;
#10;
sel=2'b11;
#10;
sel=2'b00;
#10;
sel=2'b10;
#10;
$finish;
end
endmodule
