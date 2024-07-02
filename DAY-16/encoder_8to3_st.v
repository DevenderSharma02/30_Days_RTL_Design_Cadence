`timescale 1ns / 1ps

module encoder_8to3(
    input en,
    input [7:0] in,
    output [2:0] y
    wire w1,w2,w3
);

    or g1(w1,in[1],in[3],in[5],in[7]);
    and g2(y[0],w1,en);
    or g3(w2,in[2],in[3],in[6],in[7]);
    and g4(y[1],w2,en);
    or g5(w3,in[4],in[5],in[6],in[7]);
    and g6(y[2],w3,en);
    
endmodule
