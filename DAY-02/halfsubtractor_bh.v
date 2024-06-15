`timescale 1ns / 1ps

module half_subtractor(a,b,difference,borrow);

input a,b;
output reg difference,borrow;

always @(a or b)
begin
	assign difference = a ^ b;
	assign borrow = ~a & b;
end
endmodule
