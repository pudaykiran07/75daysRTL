module fullsubtractor(
    input a,
    input b,
    input cin,
    output diff,
    output borrow
    );
    wire diff_1,borrow_1,borrow_2;
    
    halfsubtractor dut0(a,b,diff_1,borrow_1);
    halfsubtractor dut1(diff_1,cin,diff,borrow_2);
    assign borrow=borrow_1|borrow_2;
    

endmodule