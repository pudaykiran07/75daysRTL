module binary_grey(input [3:0] binary, //binary input
         output [3:0] Grey //gray code output
        );

//xor gates.
assign Grey[3] = binary[3];
assign Grey[2] = binary[3] ^ binary[2];
assign Grey[1] = binary[2] ^ binary[1];
assign Grey[0] = binary[1] ^ binary[0];

endmodule
