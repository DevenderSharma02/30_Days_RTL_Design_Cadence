module four_bit_cla_tb();

reg [3:0] A,B;
reg Cin;
wire [3:0] Sum;
wire Cout;

four_bit_carryahead_adder UUT(
				.A(A),
				.B(B),
				.Cin(Cin),
				.Cout(Cout),
				.Sum(Sum)
			       );
initial begin
repeat (10) begin
A= $random;
B= $random;
Cin= $random;
#10;
end

$finish;

end

endmodule
