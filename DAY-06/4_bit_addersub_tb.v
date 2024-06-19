module four_bit_adder_subtractor_tb();

reg [3:0] a,b;
reg mode;
wire [3:0] sum;
wire cout;
integer i;

four_bit_adder_subtractor uut(.a(a),
			      .b(b),
			      .mode(mode),
			      .sum(sum),
			      .cout(cout));
initial
begin
a = 4'b0000;
b = 4'b0000;
mode = 0;

for(i=0;i<20;i=i+1)begin
#100;
a = $random;
b = $random;
mode = $random;
end

$stop;
end

endmodule
