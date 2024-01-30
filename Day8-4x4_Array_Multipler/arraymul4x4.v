module arraymul4x4(
    input [3:0]a,
    input [3:0]b,
    output [7:0]res  );

assign res[0]=(a[0]&b[0]);
wire x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17;
  
  halfadder halfadder1(res[1],x1,(a[1]&b[0]),(a[0]&b[1]));
  fulladder fulladder1(x2,x3,a[1]&b[1],(a[0]&b[2]),x1);
  fulladder fulladder2(x4,x5,(a[1]&b[2]),(a[0]&b[3]),x3);
  halfadder halfadder2(x6,x7,(a[1]&b[3]),x5);
  
  halfadder halfadder3(res[2],x15,x2,(a[2]&b[0]));
  fulladder fulladder5(x14,x16,x4,(a[2]&b[1]),x15);
  fulladder fulladder4(x13,x17,x6,(a[2]&b[2]),x16);
  fulladder fulladder3(x9,x8,x7,(a[2]&b[3]),x17);
  
  halfadder halfadder4(res[3],x12,x14,(a[3]&b[0]));
  fulladder fulladder8(res[4],x11,x13,(a[3]&b[1]),x12);
  fulladder fulladder7(res[5],x10,x9,(a[3]&b[2]),x11);
  fulladder fulladder6(res[6],res[7],x8,(a[3]&b[3]),x10);
  
    
endmodule
