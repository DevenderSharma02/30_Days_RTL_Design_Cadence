`timescale 1ns / 1ps

module mux_8x1(y,in,sel);

input [7:0]in;
input [2:0]sel;
output y;
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;

not g1(w0,sel[0]);
not g2(w1,sel[1]);
not g3(w2,sel[2]);

and g4(w3,w0,w1,w2,in[0]);
and g5(w4,w0,w1,sel[2],in[1]);
and g6(w5,w0,sel[1],w2,in[2]);
and g7(w6,w0,sel[1],sel[2],in[3]);
and g8(w7,sel[0],w1,w2,in[4]);
and g9(w8,sel[0],w1,sel[2],in[5]);
and g10(w9,sel[0],sel[1],w2,in[6]);
and g11(w10,sel[0],sel[1],sel[2],in[7]);

or g12(y,w3,w4,w5,w6,w7,w8,w9,w10);

endmodule
