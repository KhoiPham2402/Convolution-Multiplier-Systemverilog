module absolute_value_out (
    input [15:0] B,       // Tín hiệu 16 bit đầu vào có dấu
	 input logic X,
    output logic Cout,     // Cout từ phép cộng cuối cùng
    output [15:0] S       // Kết quả giá trị tuyệt đối của B
);

logic C[15:0];   // Mảng các tín hiệu carry từ full adder

    // Tính giá trị tuyệt đối của tín hiệu B bằng cách sử dụng các bộ full adder
    full_adder FA0  (.A(0),  .B(B[0]^X),  .Cin(X), .Cout(C[0]),  .S(S[0]));
    full_adder FA1  (.A(0),  .B(B[1]^X),  .Cin(C[0]),  .Cout(C[1]),  .S(S[1]));
    full_adder FA2  (.A(0),  .B(B[2]^X),  .Cin(C[1]),  .Cout(C[2]),  .S(S[2]));
    full_adder FA3  (.A(0),  .B(B[3]^X),  .Cin(C[2]),  .Cout(C[3]),  .S(S[3]));
    full_adder FA4  (.A(0),  .B(B[4]^X),  .Cin(C[3]),  .Cout(C[4]),  .S(S[4]));
    full_adder FA5  (.A(0),  .B(B[5]^X),  .Cin(C[4]),  .Cout(C[5]),  .S(S[5]));
    full_adder FA6  (.A(0),  .B(B[6]^X),  .Cin(C[5]),  .Cout(C[6]),  .S(S[6]));
    full_adder FA7  (.A(0),  .B(B[7]^X),  .Cin(C[6]),  .Cout(C[7]),  .S(S[7]));
    full_adder FA8  (.A(0),  .B(B[8]^X),  .Cin(C[7]),  .Cout(C[8]),  .S(S[8]));
    full_adder FA9  (.A(0),  .B(B[9]^X),  .Cin(C[8]),  .Cout(C[9]),  .S(S[9]));
    full_adder FA10 (.A(0),  .B(B[10]^X), .Cin(C[9]),  .Cout(C[10]), .S(S[10]));
    full_adder FA11 (.A(0),  .B(B[11]^X), .Cin(C[10]), .Cout(C[11]), .S(S[11]));
    full_adder FA12 (.A(0),  .B(B[12]^X), .Cin(C[11]), .Cout(C[12]), .S(S[12]));
    full_adder FA13 (.A(0),  .B(B[13]^X), .Cin(C[12]), .Cout(C[13]), .S(S[13]));
    full_adder FA14 (.A(0),  .B(B[14]^X), .Cin(C[13]), .Cout(C[14]), .S(S[14]));
    full_adder FA15 (.A(0),  .B(B[15]^X), .Cin(C[14]), .Cout(Cout),  .S(S[15]));

endmodule