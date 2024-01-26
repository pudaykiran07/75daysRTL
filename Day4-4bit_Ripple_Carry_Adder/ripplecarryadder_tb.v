module ripplecarryadder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire carry;
ripplecarryadder dt(a,b,cin,sum,carry);
initial begin
a=4'b0000;b=4'b0010;
cin=0;
#10;
a=4'b0110;b=4'b1010;
cin=0;
#10;
a=4'b1000;b=4'b1010;
cin=1;
#10;
a=4'b0000;b=4'b0010;
cin=1;
#10;
a=4'b0100;b=4'b1110;
cin=1;
$finish;
end
endmodule
