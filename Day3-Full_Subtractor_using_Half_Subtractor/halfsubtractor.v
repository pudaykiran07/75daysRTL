module halfsubtractor(
    input a,
    input b,
    output diff,
    output borrow
    );
    assign diff=a^b;
    assign borrow=~a&b;
endmodule
