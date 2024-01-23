module fulladder(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire sum1,sum2,carry1,carry2;
halfadder dut0(a,b,sum1,carry1);
halfadder dut1(sum1,cin,sum,carry2);
assign carry=carry1|carry2;
endmodule
