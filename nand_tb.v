
module nand_tb;

reg A, B;

wire and_out;
wire or_out;
wire not_out;

integer i;

and_using_nand U1 (
    .A(A),
    .B(B),
    .Y(and_out)
);

or_using_nand U2 (
    .A(A),
    .B(B),
    .Y(or_out)
);

not_using_nand U3 (
    .A(A),
    .Y(not_out)
);

initial begin

    $dumpfile("nand_wave.vcd");
    $dumpvars(0, nand_tb);

    $display("A B | AND OR NOT");
    $display("----------------");

    A = 0;
    B = 0;

    for (i = 0; i < 4; i = i + 1) begin
        #10;

        $display("%b %b |  %b   %b   %b",
                 A, B, and_out, or_out, not_out);

        {A, B} = {A, B} + 1'b1;
    end

    #10;
    $display("Simulation completed successfully");

    $finish;

end

endmodule

