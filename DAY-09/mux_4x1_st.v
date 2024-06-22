`timescale 1ns /1ps

module mux_4x1(y,in,sel);
input [3:0]in;
input [1:0]sel;
output y;
wire w1,w2,w3,w4,w5,w6;

not g1(w1,sel[0]);
not g2(w2,sel[1]);

and g3(w3,w1,w2,in[0]);
and g4(w4,w1,sel[1],in[1]);
and g5(w5,w2,sel[0],in[2]);
and g6(w6,sel[0],sel[1],in[3]);

or g7(y,w3,w4,w5,w6);

endmodule
