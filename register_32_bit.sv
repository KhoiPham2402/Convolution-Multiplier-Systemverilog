module register_32_bit (
    input [31:0] D,     // 32-bit data input
    input clk,           // Clock input
    input rst,         // Asynchronous rst
    output [31:0] Q      // 32-bit data output
);

    // Create 32 D flip-flops for 32-bit register
    D_flip_flop DFF0 (.D(D[0]),   .clk(clk), .rst(rst), .Q(Q[0]));
    D_flip_flop DFF1 (.D(D[1]),   .clk(clk), .rst(rst), .Q(Q[1]));
    D_flip_flop DFF2 (.D(D[2]),   .clk(clk), .rst(rst), .Q(Q[2]));
    D_flip_flop DFF3 (.D(D[3]),   .clk(clk), .rst(rst), .Q(Q[3]));
    D_flip_flop DFF4 (.D(D[4]),   .clk(clk), .rst(rst), .Q(Q[4]));
    D_flip_flop DFF5 (.D(D[5]),   .clk(clk), .rst(rst), .Q(Q[5]));
    D_flip_flop DFF6 (.D(D[6]),   .clk(clk), .rst(rst), .Q(Q[6]));
    D_flip_flop DFF7 (.D(D[7]),   .clk(clk), .rst(rst), .Q(Q[7]));
    D_flip_flop DFF8 (.D(D[8]),   .clk(clk), .rst(rst), .Q(Q[8]));
    D_flip_flop DFF9 (.D(D[9]),   .clk(clk), .rst(rst), .Q(Q[9]));
    D_flip_flop DFF10 (.D(D[10]), .clk(clk), .rst(rst), .Q(Q[10]));
    D_flip_flop DFF11 (.D(D[11]), .clk(clk), .rst(rst), .Q(Q[11]));
    D_flip_flop DFF12 (.D(D[12]), .clk(clk), .rst(rst), .Q(Q[12]));
    D_flip_flop DFF13 (.D(D[13]), .clk(clk), .rst(rst), .Q(Q[13]));
    D_flip_flop DFF14 (.D(D[14]), .clk(clk), .rst(rst), .Q(Q[14]));
    D_flip_flop DFF15 (.D(D[15]), .clk(clk), .rst(rst), .Q(Q[15]));
    D_flip_flop DFF16 (.D(D[16]), .clk(clk), .rst(rst), .Q(Q[16]));
    D_flip_flop DFF17 (.D(D[17]), .clk(clk), .rst(rst), .Q(Q[17]));
    D_flip_flop DFF18 (.D(D[18]), .clk(clk), .rst(rst), .Q(Q[18]));
    D_flip_flop DFF19 (.D(D[19]), .clk(clk), .rst(rst), .Q(Q[19]));
    D_flip_flop DFF20 (.D(D[20]), .clk(clk), .rst(rst), .Q(Q[20]));
    D_flip_flop DFF21 (.D(D[21]), .clk(clk), .rst(rst), .Q(Q[21]));
    D_flip_flop DFF22 (.D(D[22]), .clk(clk), .rst(rst), .Q(Q[22]));
    D_flip_flop DFF23 (.D(D[23]), .clk(clk), .rst(rst), .Q(Q[23]));
    D_flip_flop DFF24 (.D(D[24]), .clk(clk), .rst(rst), .Q(Q[24]));
    D_flip_flop DFF25 (.D(D[25]), .clk(clk), .rst(rst), .Q(Q[25]));
    D_flip_flop DFF26 (.D(D[26]), .clk(clk), .rst(rst), .Q(Q[26]));
    D_flip_flop DFF27 (.D(D[27]), .clk(clk), .rst(rst), .Q(Q[27]));
    D_flip_flop DFF28 (.D(D[28]), .clk(clk), .rst(rst), .Q(Q[28]));
    D_flip_flop DFF29 (.D(D[29]), .clk(clk), .rst(rst), .Q(Q[29]));
    D_flip_flop DFF30 (.D(D[30]), .clk(clk), .rst(rst), .Q(Q[30]));
    D_flip_flop DFF31 (.D(D[31]), .clk(clk), .rst(rst), .Q(Q[31]));

endmodule