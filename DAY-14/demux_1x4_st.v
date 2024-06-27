`timescale 1ns / 1ps

module demux_1x4_tb(sel,data,y);
  
input data;
input [1:0] sel;
output [3:0] y;
wire w1,w2;

  not g1(w1,sel[0]);
  not g2(w2,sel[1]);

  and g3(y[0],w1,w2,data);
  and g4(y[1],w2,sel[0],data);
  and g5(y[2],w1,sel[1],data);
  and g6(y[3],sel[0],sel[1],data);

  
endmodule
