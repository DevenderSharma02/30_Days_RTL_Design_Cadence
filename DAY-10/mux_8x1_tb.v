`timescale 1ns/1ps

module mux_8x1_tb();
reg [7:0]in;
reg [2:0]sel;
wire y;

mux_8x1 uut(.in(in),.sel(sel),.y(y));

initial begin
in = 0;
sel = 0;

repeat (10) begin
#10;
in = $random;
sel = $random;
end
#10;
$finish;
end

endmodule
