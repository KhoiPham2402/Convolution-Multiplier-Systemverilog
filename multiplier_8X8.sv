module multiplier_8X8 (
input [7:0] A,B,
input logic Cin,
output [15:0] P
);

logic [7:0] A1,B1;
logic [7:0] D0;
logic [7:0] D1;
logic [7:0] D2;
logic [7:0] D3;
logic [7:0] D4;
logic [7:0] D5;
logic [15:0] P1;

assign P1[0] = A1[0]&B1[0];
//Convert 2 input to absolute value
absolute_value ABS1 (.B(A),.S(A1));
absolute_value ABS2 (.B(B),.S(B1));
//Multiplier
eight_bit_adder FA0 (.A({1'b0,A1[7:1]}&{8{B1[0]}}) ,. B(A1&{8{B1[1]}}),. Cin(0) ,.S({D0[6:0],P1[1]}),.Cout(D0[7]));
eight_bit_adder FA1 (.A(D0) ,. B(A1&{8{B1[2]}}),. Cin(0) ,. S({D1[6:0],P1[2]}),.Cout(D1[7])); 
eight_bit_adder FA2 (.A(D1) ,. B(A1&{8{B1[3]}}),. Cin(0) ,. S({D2[6:0],P1[3]}),.Cout(D2[7]));
eight_bit_adder FA3 (.A(D2) ,. B(A1&{8{B1[4]}}),. Cin(0) ,. S({D3[6:0],P1[4]}),.Cout(D3[7]));
eight_bit_adder FA4 (.A(D3) ,. B(A1&{8{B1[5]}}),. Cin(0) ,. S({D4[6:0],P1[5]}),.Cout(D4[7]));
eight_bit_adder FA5 (.A(D4) ,. B(A1&{8{B1[6]}}),. Cin(0) ,. S({D5[6:0],P1[6]}),.Cout(D5[7]));
eight_bit_adder FA6 (.A(D5) ,. B(A1&{8{B1[7]}}),. Cin(0) ,. S(P1[14:7]),.Cout(P1[15]));
//Convert absolute value to 2'comp
absolute_value_out (.B(P1),.X(A[7]^B[7]),.S(P)); 
 
endmodule 