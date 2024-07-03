`timescale 1ns / 1ps

module decoder_3to8(in,y);
input [2:0] in;
output [7:0] y;

  wire w0,w1,w2;

  not g1(w0,in[0]);
  not g2(w1,in[1]);
  not g3(w2,in[2]);

  and g4(y[0],w2,w1,w0);
  and g5(y[1],w2,w1,in[0]);
  and g6(y[2],w2,in[1],w0);
  and g7(y[3],w2,in[1],in[0]);
  and g8(y[4],in[2],w1,w0);
  and g9(y[5],in[2],w1,in[0]);
  and g10(y[6],in[2],in[1],w0);
  and g11(y[7],in[2],in[1],in[0]);

endmodule
