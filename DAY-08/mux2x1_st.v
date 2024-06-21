`timescale 1ns / 1ps

module mux_2x1(y,i0,i1,sel);

input i0,i1,sel;
output y;
wire w1,w2,w3;

not g1(w1,sel);
and g2(w2,w1,i0);
and g3(w3,sel,i1);
or g4(y,w2,w3);

endmodule
