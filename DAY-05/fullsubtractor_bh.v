`timescale 1ns / 1ps

module full_subtractor(a,b,c,difference,borrow);

input a,b,c;
output reg difference,borrow;

always @(a or b or c)
begin
assign difference = a ^ b ^ c;
assign borrow = (~a&b) | (~a&c) | (b&c);
end

endmodule
