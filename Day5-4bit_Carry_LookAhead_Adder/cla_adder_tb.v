module cla_adder_tb();
reg [3:0]a,b;
reg cin;
wire [3:0] sum;
wire cout;

cla_adder dut(a,b,cin,sum,cout);
initial
begin
a=2;b=3;
cin=0;
#10;
a=1;cin=8;
cin=1;
#10;
a=9;b=4;
cin=0;
#10;
a=5;b=9;
cin=1;
#10;
a=3;b=11;
cin=1;
$finish;
end
endmodule
