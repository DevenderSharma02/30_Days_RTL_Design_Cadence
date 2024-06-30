`timescale 1ns / 1ps

module comparator_2bit(a,b,a_gt_b,a_lt_b,a_eq_b);
  
  input [1:0] a,b;
  output a_gt_b;
  output a_lt_b;
  output a_eq_b;
  
  
  wire a1barb1 = ~a[1] & b[1];
  wire a0barb0 = ~a[0] & b[0];
  wire a1b1bar =  a[1] & ~b[1];
  wire a0b0bar =  a[0] & ~b[0];
  wire x1 = ~(a[1] ^ b[1]);
  wire x0 = ~(a[0] ^ b[0]);
  
  assign a_gt_b = a1b1bar | (x1 & a0b0bar);
  assign a_lt_b = a1barb1 | (x1 & a0barb0);
  assign a_eq_b = x1 & x0;

  
//   assign a_gt_b = (a[1] & ~b[1]) | ((a[0]&~b[0])&~(a[1]^b[1]));
  
//   assign a_eq_b = ~(a[1]^b[1]) & ~(a[0]^b[0]);
  
//   assign a_lt_b = (~a[1] & b[1]) | ((~a[0]&b[0]) & ~(a[1]^b[1]));
  
endmodule

