module priority_encoder(in,out);
input [3:0]in;
output reg [1:0]out;
always @(in)
begin
casex(in)
4'b0000:out=2'bxx;
4'b0001:out=0;
4'b001x:out=1;
4'b01xx:out=2;
4'b1xxx:out=3;
endcase
end
endmodule

