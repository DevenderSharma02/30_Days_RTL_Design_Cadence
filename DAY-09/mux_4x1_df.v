`timescale 1ns / 1ps

module mux_4x1(y,in,sel);
input [3:0]in;
input [1:0]sel;
output y;

assign y = (~sel[0]&~sel[1]&in[0]) | (~sel[0]&sel[1]&in[1]) | (sel[0]&~sel[1]&in[2]) | (sel[0]&sel[1]&in[3]);

endmodule
