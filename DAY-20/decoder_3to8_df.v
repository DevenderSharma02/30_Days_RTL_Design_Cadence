`timescale 1ns / 1ps

module decoder_3to8(in,y);
input [2:0] in;
output [7:0] y;

assign y[0] = (~in[2] & ~in[1] & ~in[0]);
assign y[1] = (~in[2] & ~in[1] & in[0]);
assign y[2] = (~in[2] & in[1] & ~in[0]);
assign y[3] = (~in[2] & in[1] & in[0]);
assign y[4] = (in[2] & ~in[1] & ~in[0]);
assign y[5] = (in[2] & ~in[1] & in[0]);
assign y[6] = (in[2] & in[1] & ~in[0]);
assign y[7] = (in[2] & in[1] & in[0]);

endmodule
