module ripple_carry_adder_tb();

reg [3:0]a,b;
reg cin;
wire  [3:0]sum;
wire carry;

ripple_carry_adder uut(.a(a),
		       .b(b),
		       .sum(sum),
		       .carry(carry),
		       .cin(cin)
		     );
initial begin 
a=4'b0001;
b=4'b1000;
cin=0;
#10;

a=4'b1111;
b=4'b1111;
#10;

a=4'b1110;
b=4'b0001;
#10;
$stop;
end 
endmodule

