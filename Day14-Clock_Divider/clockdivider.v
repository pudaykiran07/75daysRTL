module clockdivider(input clk,rst,
output reg divby2,divby4,divby8,divby16);
reg [3:0]count=4'b0000;
always@(posedge clk)
begin
if(rst==0)
count=4'b0000;
else
count<=count+1;
divby2<=count[0];
divby4<=count[1];
divby8<=count[2];
divby16<=count[3];
end

endmodule
