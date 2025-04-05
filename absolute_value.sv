module absolute_value (
input [7:0] B,
output logic Cout,
output [7:0] S
);

logic C0,C1,C2,C3,C4,C5,C6;
//Xor each of bit with the sign_bit of the input and add to the sign_bit to get the absolute value 
//if sign_bit = 0 => never change anything
//if sign_bit = 1 => 2'c the input signal
	 full_adder FA0  (.A(1'b0),  .B(B[0]^B[7]),  .Cin(B[7]),  .Cout(C0),  .S(S[0]));
    full_adder FA1  (.A(1'b0),  .B(B[1]^B[7]),  .Cin(C0),   .Cout(C1),  .S(S[1]));
    full_adder FA2  (.A(1'b0),  .B(B[2]^B[7]),  .Cin(C1),   .Cout(C2),  .S(S[2]));
    full_adder FA3  (.A(1'b0),  .B(B[3]^B[7]),  .Cin(C2),   .Cout(C3),  .S(S[3]));
    full_adder FA4  (.A(1'b0),  .B(B[4]^B[7]),  .Cin(C3),   .Cout(C4),  .S(S[4]));
    full_adder FA5  (.A(1'b0),  .B(B[5]^B[7]),  .Cin(C4),   .Cout(C5),  .S(S[5]));
    full_adder FA6  (.A(1'b0),  .B(B[6]^B[7]),  .Cin(C5),   .Cout(C6),  .S(S[6]));
	 full_adder FA7  (.A(1'b0),  .B(B[7]^B[7]),  .Cin(C6),   .Cout(Cout),  .S(S[7]));
endmodule 