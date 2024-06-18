`timescale 1ns / 1ps

module full_subtractor(a,b,c,difference,borrow);

input a,b,c;
output difference,borrow;
wire abar,w1,w2,w3;

not g1(abar,a);

xor g2(difference,a,b,c);
and g3(w1,abar,b);
and g4(w2,abar,c);
and g5(w3,b,c);
or g6(borrow,w1,w2,w3);

endmodule
