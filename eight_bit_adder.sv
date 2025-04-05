module eight_bit_adder (
input [7:0] A,B,
input logic Cin,
output logic Cout,
output [7:0] S
);

logic C0,C1,C2,C3,C4,C5,C6;

	 full_adder FA0  (.A(A[0]),  .B(B[0]),  .Cin(Cin),  .Cout(C0),  .S(S[0]));
    full_adder FA1  (.A(A[1]),  .B(B[1]),  .Cin(C0),   .Cout(C1),  .S(S[1]));
    full_adder FA2  (.A(A[2]),  .B(B[2]),  .Cin(C1),   .Cout(C2),  .S(S[2]));
    full_adder FA3  (.A(A[3]),  .B(B[3]),  .Cin(C2),   .Cout(C3),  .S(S[3]));
    full_adder FA4  (.A(A[4]),  .B(B[4]),  .Cin(C3),   .Cout(C4),  .S(S[4]));
    full_adder FA5  (.A(A[5]),  .B(B[5]),  .Cin(C4),   .Cout(C5),  .S(S[5]));
    full_adder FA6  (.A(A[6]),  .B(B[6]),  .Cin(C5),   .Cout(C6),  .S(S[6]));
	 full_adder FA7  (.A(A[7]),  .B(B[7]),  .Cin(C6),   .Cout(Cout),  .S(S[7]));
endmodule