`timescale 1ns / 1ps

module binary_2_Gray_Conveter(binary,gray);

input [3:0]binary;
output [3:0]gray;

assign gray[3] = binary[3];

xor g1(gray[2],binary[3],binary[2]);
xor g2(gray[1],binary[2],binary[1]);
xor g3(gray[0],binary[1],binary[0]);

endmodule
