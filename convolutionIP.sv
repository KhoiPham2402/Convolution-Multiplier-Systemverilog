module convolutionIP (
    input [7:0] X0, X1, X2, X3, X4, X5, X6, X7, X8,
    input [7:0] H0, H1, H2, H3, H4, H5, H6, H7, H8,
    input logic rst, clk,
    output [31:0] Y
);

// Tín hiệu trung gian (sản phẩm của phép nhân)
logic [15:0] Y10, Y11, Y12, Y13, Y14, Y15, Y16, Y17, Y18;
logic [15:0] Y1, Y2, Y3, Y4, Y5, Y6, Y7, Y8, Y0;
logic [31:0] Y20, Y21, Y22, Y23, Y24, Y25, Y26, Y27, Y28;
logic [31:0] A0, A1, A2, A3, A4, A5, A6, A7, A8;
logic [31:0] B0, B1, B2, B3, C0, C1, D0, out;

// Phép nhân của các cặp X và H
multiplier_8X8 Mul0 (.A(X0), .B(H0), .Cin(0), .P(Y10));
multiplier_8X8 Mul1 (.A(X1), .B(H1), .Cin(0), .P(Y11));
multiplier_8X8 Mul2 (.A(X2), .B(H2), .Cin(0), .P(Y12));
multiplier_8X8 Mul3 (.A(X3), .B(H3), .Cin(0), .P(Y13));
multiplier_8X8 Mul4 (.A(X4), .B(H4), .Cin(0), .P(Y14));
multiplier_8X8 Mul5 (.A(X5), .B(H5), .Cin(0), .P(Y15));
multiplier_8X8 Mul6 (.A(X6), .B(H6), .Cin(0), .P(Y16));
multiplier_8X8 Mul7 (.A(X7), .B(H7), .Cin(0), .P(Y17));
multiplier_8X8 Mul8 (.A(X8), .B(H8), .Cin(0), .P(Y18));

// Pipeline registers để lưu trữ giá trị
register_16_bit Pipeline16_0 (.D(Y10), .rst(rst), .clk(clk), .Q(Y0));
register_16_bit Pipeline16_1 (.D(Y11), .rst(rst), .clk(clk), .Q(Y1));
register_16_bit Pipeline16_2 (.D(Y12), .rst(rst), .clk(clk), .Q(Y2));
register_16_bit Pipeline16_3 (.D(Y13), .rst(rst), .clk(clk), .Q(Y3));
register_16_bit Pipeline16_4 (.D(Y14), .rst(rst), .clk(clk), .Q(Y4));
register_16_bit Pipeline16_5 (.D(Y15), .rst(rst), .clk(clk), .Q(Y5));
register_16_bit Pipeline16_6 (.D(Y16), .rst(rst), .clk(clk), .Q(Y6));
register_16_bit Pipeline16_7 (.D(Y17), .rst(rst), .clk(clk), .Q(Y7));
register_16_bit Pipeline16_8 (.D(Y18), .rst(rst), .clk(clk), .Q(Y8));

// Sign extension để mở rộng giá trị từ 16 bit lên 32 bit
sign_extend SE0 (.A(Y0), .extended(Y20));
sign_extend SE1 (.A(Y1), .extended(Y21));
sign_extend SE2 (.A(Y2), .extended(Y22));
sign_extend SE3 (.A(Y3), .extended(Y23));
sign_extend SE4 (.A(Y4), .extended(Y24));
sign_extend SE5 (.A(Y5), .extended(Y25));
sign_extend SE6 (.A(Y6), .extended(Y26));
sign_extend SE7 (.A(Y7), .extended(Y27));
sign_extend SE8 (.A(Y8), .extended(Y28));

// Register 32 bit để lưu trữ giá trị mở rộng
register_32_bit Register32_0 (.D(Y20), .rst(rst), .clk(clk), .Q(A0));
register_32_bit Register32_1 (.D(Y21), .rst(rst), .clk(clk), .Q(A1));
register_32_bit Register32_2 (.D(Y22), .rst(rst), .clk(clk), .Q(A2));
register_32_bit Register32_3 (.D(Y23), .rst(rst), .clk(clk), .Q(A3));
register_32_bit Register32_4 (.D(Y24), .rst(rst), .clk(clk), .Q(A4));
register_32_bit Register32_5 (.D(Y25), .rst(rst), .clk(clk), .Q(A5));
register_32_bit Register32_6 (.D(Y26), .rst(rst), .clk(clk), .Q(A6));
register_32_bit Register32_7 (.D(Y27), .rst(rst), .clk(clk), .Q(A7));
register_32_bit Register32_8 (.D(Y28), .rst(rst), .clk(clk), .Q(A8));

// Phép cộng các giá trị trong các giai đoạn khác nhau
thirty_two_bit_adder Add0 (.A(A0), .B(A1), .Cin(0), .S(B0));
thirty_two_bit_adder Add1 (.A(A2), .B(A3), .Cin(0), .S(B1));
thirty_two_bit_adder Add2 (.A(A4), .B(A5), .Cin(0), .S(B2));
thirty_two_bit_adder Add3 (.A(A6), .B(A7), .Cin(0), .S(B3));

// Cộng các giá trị B0, B1, B2, B3 lại với nhau
thirty_two_bit_adder Add4 (.A(B0), .B(B1), .Cin(0), .S(C0));
thirty_two_bit_adder Add5 (.A(B2), .B(B3), .Cin(0), .S(C1));

// Cộng C0 và C1 lại với nhau
thirty_two_bit_adder Add6 (.A(C0), .B(C1), .Cin(0), .S(D0));

// Cộng D0 và A8 để có kết quả cuối cùng
thirty_two_bit_adder Add7 (.A(D0), .B(A8), .Cin(0), .S(out));

// Lưu kết quả cuối cùng vào register 32 bit
register_32_bit Register32_9 (.D(out), .rst(rst), .clk(clk), .Q(Y));

endmodule
