module ripplecarryadder(a,b,cin,sum,carry);
input [3:0]a;
input [3:0]b;
input cin;
output [3:0]sum;
output carry;
wire c0,c1,c2;
fulladder dut1(sum[0],c0,a[0],b[0],cin);
fulladder dut2(sum[1],c1,a[1],b[1],c0);
fulladder dut3(sum[2],c2,a[2],b[2],c1);
fulladder dut4(sum[3],carry,a[3],b[3],c2);
endmodule
