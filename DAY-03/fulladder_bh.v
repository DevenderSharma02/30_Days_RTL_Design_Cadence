`timescale 1ns / 1ps

module fulladder(sum,carry,a,b,c);
input a,b,c;
output reg sum,carry;

always @(a or b or c)
begin
{carry,sum} = a + b + c;
end
endmodule

