module sign_extend (
    input [15:0] A,         // 16-bit input A
    output [31:0] extended // 32-bit extended output
);

    // Sign extension: Extend the sign bit (bit 15 of A) to the left
    assign extended = { {16{A[15]}}, A }; // copy bit 15 (sign bit) 16 times and concatenate with A

endmodule
