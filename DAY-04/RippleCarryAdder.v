`timescale 1ns / 1ps

module ripple_carry_adder(a,b,cin,sum,carry);
input [3:0]a,b;
input cin;
output [3:0]sum;
output carry;
wire [2:0]w;	//Carry out of each full adder

fulladder f1(a[0],b[0],cin,sum[0],w[0]);
fulladder f2(a[1],b[1],w[0],sum[1],w[1]);
fulladder f3(a[2],b[2],w[1],sum[2],w[2]);
fulladder f4(a[3],b[3],w[2],sum[3],carry);
endmodule

module fulladder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;

assign sum = a ^ b ^ c;
assign carry = (a&b) | (b&c) | (c&a);
endmodule

