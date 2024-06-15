`timescale 1ns / 1ps

module fulladder(sum,carry,a,b,c);
input a,b,c;
output sum,carry;

assign sum = a ^ b ^ c;
assign carry = (a&b) | (b&c) | (c&a);
endmodule


