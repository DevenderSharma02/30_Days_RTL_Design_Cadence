`timescale 1ns / 1ps

module demux_1x2(data,sel,y0,y1);
input data,sel;
output y1,y0;

assign y0 = data & ~sel;
assign y1 = data & sel;

endmodule