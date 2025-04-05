module full_adder(
input logic A,B,Cin,
output logic S, Cout
);

assign S = A ^ B ^ Cin;
assign Cout = (A&B) | (A&Cin) | (B & Cin);
endmodule 
