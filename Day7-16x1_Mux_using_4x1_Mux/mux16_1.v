module mux16_1(in,sel,out);
input [15:0]in;
input [3:0]sel;
output out;
wire [3:0] sel_1;
mux4_1 mux1(in[3:0],sel[3:2],sel_1[0]);
mux4_1 mux2(in[7:4],sel[3:2],sel_1[1]);
mux4_1 mux3(in[11:8],sel[3:2],sel_1[2]);
mux4_1 mux4(in[15:12],sel[3:2],sel_1[3]);
mux4_1 mux5(sel_1[3:0],sel[1:0],out);

endmodule
