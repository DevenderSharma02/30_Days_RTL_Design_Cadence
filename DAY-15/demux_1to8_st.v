`timescale 1ns / 1ps

module demux_1x8(data,sel,y);
input data;
input [2:0]sel;
output [7:0] y;

wire w0,w1,w2;

  not g1(w2,sel[2]);
  not g2(w1,sel[1]);
  not g3(w0,sel[0]);


  and g4(y[0],w2,w1,w0,data);
  and g5(y[1],w2,w1,sel[0],data);
  and g6(y[2],w2,sel[1],w0,data);
  and g7(y[3],w2,sel[1],sel[0],data);
  and g8(y[4],sel[2],w1,w0,data);
  and g9(y[5],sel[2],w1,sel[0],data);
  and g10(y[6],sel[2],sel[1],w0,data);
  and g11(y[7],sel[2],sel[1],sel[0],data);
  
  
endmodule
