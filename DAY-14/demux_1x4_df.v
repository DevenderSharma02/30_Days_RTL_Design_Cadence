`timescale 1ns / 1ps

module demux_1x4(data,sel,y);
  input data;
  input [1:0] sel;
  output [3:0] y;

  assign y[0] = data & ~sel[1] & ~sel[0];  // Y0
  assign y[1] = data & ~sel[1] & sel[0];  // Y1
  assign y[2] = data & sel[1] & ~sel[0];  // Y2
  assign y[3] = data & sel[1] & sel[0];  // Y3

endmodule
