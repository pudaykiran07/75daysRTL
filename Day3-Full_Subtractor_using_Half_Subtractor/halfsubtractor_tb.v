module halfsubtractor_tb();
reg a,b;
wire diff,borrow;

halfsubtractor dut(a,b,diff,borrow);

initial begin
#10;
a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
end
endmodule
