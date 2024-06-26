`timescale 1ns / 1ps

module demux_1x2_tb();
reg data,sel;
wire y0,y1;

demux_1x2 uut(.data(data), .sel(sel), .y0(y0), .y1(y1) );

initial begin
data = 1'b0;
sel = 1'b0;

repeat (10) begin
data = $random;
sel = $random;
#10;
end
$stop;
end
endmodule