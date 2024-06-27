`timescale 1ns / 1ps

module demux_1x4(data,sel,y);
  input data;
  input [1:0] sel;
  output [3:0] y;

  assign y[0] = (~sel[0]) & (~sel[1]) & data;
  assign y[1] =  sel[0] & (~sel[1]) & data;
  assign y[2] = (~sel[0]) & sel[1] & data;
  assign y[3] = sel[0] & sel[1] & data;

endmodule
