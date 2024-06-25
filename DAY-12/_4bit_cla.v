
module four_bit_carry_lookahead_adder(A,B,Cin,Sum,Cout);

input [3:0] A,B;
input Cin;
output [3:0]Sum;
output Cout;

wire [3:0] G,P;
wire [3:0]C;

assign G[0] = A[0] & B[0];
assign G[1] = A[1] & B[1];
assign G[2] = A[2] & B[2];
assign G[3] = A[3] & B[3];

assign P[0] = A[0] ^ B[0];
assign P[1] = A[1] ^ B[1];
assign P[2] = A[2] ^ B[2];
assign P[3] = A[3] ^ B[3];

assign C[0] = Cin;

assign C[1] = G[0] | (P[0] & C[0]);

assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);

assign C[3] = G[2] | (G[1] & P[2]) | (G[0] & P[1] & P[2]) | (P[0] & P[1] & P[2] & C[0]);

assign Cout = G[3] | (G[2] & P[3]) | (G[1] & P[2] & P[3]) | (G[0] & P[1] & P[2] & P[3]) | (P[0] & P[1] & P[2] & P[3] & C[0]);


assign Sum = P ^ C;

endmodule

