// 4-Bit Adder Subtractor

module four_bit_adder_subtractor(a,b,mode,sum,cout);

input[3:0] a,b;
input mode;
output[3:0]sum;
output cout;


wire w1,w2,w3,w4;
wire c1,c2,c3;

xor g1(w1,mode,b[0]);
xor g2(w2,mode,b[1]);
xor g3(w3,mode,b[2]);
xor g4(w4,mode,b[3]);

full_adder f1(a[0],w1,mode,sum[0],c1);
full_adder f2(a[1],w2,c[0],sum[1],c2);
full_adder f3(a[2],w3,c[1],sum[2],c3);
full_adder f4(a[3],w4,c[2],sum[3],cout);

endmodule



module full_adder(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
assign {carry,sum} = a + b + c;
endmodule
