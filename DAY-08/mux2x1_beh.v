`timescale 1ns / 1ps

module mux_2x1(y,i0,i1,sel);

input i0,i1,sel;
output reg y;

always @(*) begin
if(sel)
	y = i1;
else
	y = i0;
end

endmodule


