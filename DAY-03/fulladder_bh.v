`timescale 1ns / 1ps

module fulladder(a,b,c,sum,carry);
input a,b,c;
output reg sum,carry;

always @(a or b or c)
begin
{carry,sum} = a + b + c;
end
endmodule

