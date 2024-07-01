`timescale 1ns / 1ps

module comparator_4bit (
    input [3:0] A,
    input [3:0] B,
    output A_gt_B,
    output A_lt_B,
    output A_eq_B
);
  
wire A3barB3 = ~A[3] & B[3];
wire A3B3bar =  A[3] & ~B[3];
wire A2barB2 = ~A[2] & B[2];
wire A2B2bar =  A[2] & ~B[2];
wire A1barB1 = ~A[1] & B[1];
wire A0barB0 = ~A[0] & B[0];
wire A1B1bar =  A[1] & ~B[1];
wire A0B0bar =  A[0] & ~B[0];

wire X3 = ~(A[3] ^ B[3]);
wire X2 = ~(A[2] ^ B[2]);
wire X1 = ~(A[1] ^ B[1]);
wire X0 = ~(A[0] ^ B[0]);

assign A_eq_B = X3 & X2 & X1 & X0;
assign A_lt_B = A3barB3 | (X3 & A2barB2) | (X3 & X2 & A1barB1) | (X3 & X2 & X1 & A0barB0);
assign A_gt_B = A3B3bar | (X3 & A2B2bar) | (X3 & X2 & A1B1bar) | (X3 & X2 & X1 & A0B0bar);

endmodule
