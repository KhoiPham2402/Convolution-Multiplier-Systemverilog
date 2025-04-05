module D_flip_flop (
input logic D, clk,rst,
output logic Q
);

always_ff @(posedge clk or posedge rst) begin 
	if (rst) begin 
		Q <= 0;
	end else begin
		Q <= D;
	end
end
endmodule 