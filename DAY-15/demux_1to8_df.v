`timescale 1ns / 1ps

module demux_1x8(data,sel,y);
input data;
input [2:0]sel;
output [7:0] y;

  assign y[0] = data & ~sel[2] & ~sel[1] & ~sel[0];  // Y0
  assign y[1] = data & ~sel[2] & ~sel[1] & sel[0];  // Y1
  assign y[2] = data & ~sel[2] & sel[1] & ~sel[0];  // Y2
  assign y[3] = data & ~sel[2] & sel[1] & sel[0];  // Y3
  assign y[4] = data & sel[2] & ~sel[1] & ~sel[0];  // Y4
  assign y[5] = data & sel[2] & ~sel[1] & sel[0];  // Y5
  assign y[6] = data & sel[2] & sel[1] & ~sel[0];  // Y6
  assign y[7] = data & sel[2] & sel[1] & sel[0];  // Y7
  
endmodule
