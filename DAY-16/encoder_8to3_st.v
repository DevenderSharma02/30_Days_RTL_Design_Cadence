`timescale 1ns / 1ps

module encoder_8to3(
    input en,
    input [7:0] in,
    output [2:0] y
);

  or g1(y[0],in[1],in[3],in[5],in[7]);
  or g2(y[1],in[2],in[3],in[6],in[7]);
  or g3(y[2],in[4],in[5],in[6],in[7]);

endmodule
