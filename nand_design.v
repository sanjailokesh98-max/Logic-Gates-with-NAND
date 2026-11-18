
module and_using_nand (
    input A,
    input B,
    output Y
);

wire temp;

nand (temp, A, B);
nand (Y, temp, temp);

endmodule


module or_using_nand (
    input A,
    input B,
    output Y
);

wire temp1, temp2;

nand (temp1, A, A);
nand (temp2, B, B);
nand (Y, temp1, temp2);

endmodule


module not_using_nand (
    input A,
    output Y
);

nand (Y, A, A);

endmodule

