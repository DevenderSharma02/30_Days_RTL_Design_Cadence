`timescale 1ns / 1ps

module demux_1x8(data,sel,y);
input data;
input [2:0]sel;
output [7:0] y;

  y[0] = ~sel[0] & ~sel[1] & ~sel[2] & data;
  y[1] = ~sel[0] & ~sel[1] & sel[2] & data;
  y[2] = ~sel[0] & sel[1] & ~sel[2] & data;
  y[3] = ~sel[0] & sel[1] & sel[2] & data;
  y[4] = sel[0] & ~sel[1] & ~sel[2] & data;
  y[5] = sel[0] & ~sel[1] & sel[2] & data;
  y[6] = sel[0] & sel[1] & ~sel[2] & data;
  y[7] = sel[0] & sel[1] & sel[2] & data;
  
endmodule
