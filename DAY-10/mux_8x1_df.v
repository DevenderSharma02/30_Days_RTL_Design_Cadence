`timescale 1ns / 1ps

module mux_8x1(y,in,sel);
  
input [7:0]in;
input [2:0]sel;
output y;

assign y = (~sel[0]&~sel[1]&~sel[2]&in[0]) | (~sel[0]&~sel[1]&sel[2]&in[1]) | (~sel[0]&sel[1]&~sel[2]&in[2]) | (~sel[0]&sel[1]&sel[2]&in[3]) | (sel[0]&~sel[1]&~sel[2]&in[4])| (sel[0]&~sel[1]&sel[2]&in[5]) | (sel[0]&sel[1]&~sel[2]&in[6]) | (sel[0]&sel[1]&sel[2]&in[7]);

endmodule
