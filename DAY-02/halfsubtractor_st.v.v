`timescale 1ns / 1ps

module half_subtractor(a,b,difference,borrow);

input a,b;
output difference,borrow;
wire w1;

not g1(w1,a);
xor g2(sum,a,b);
and g3(borrow,w1,b);

endmodule