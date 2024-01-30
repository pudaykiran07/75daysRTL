module fulladder(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire sum1,sum2,carry1,carry2;
halfadder d0(.a(a),.b(b),.sum(sum1),.carry(carry1));
halfadder d1(.a(sum1),.b(cin),.sum(sum),.carry(carry2));
assign carry=carry1|carry2;
endmodule
