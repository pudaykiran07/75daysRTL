module fullsubtractor_tb();
reg a,b,cin;
wire diff,borrow;

fullsubtractor dut(a,b,cin,diff,borrow);

initial begin
a=0;b=0;cin=0; 
#10;
a=0;b=1;cin=0;
#10;
a=1;b=0;cin=0;
#10;
a=1;b=1;cin=0;
#10
a=0;b=0;cin=1;
#10;
a=0;b=1;cin=1;
#10;
a=1;b=0;cin=1;
#10;
a=1;b=1;cin=1;
#10;
$finish;
end
endmodule
