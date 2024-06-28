`timescale 1ns / 1ps

module demux_1x8_tb();
reg data;
reg [2:0] sel;
wire [7:0] y;

demux_1x8 uut(.data(data), 
              .sel(sel), 
              .y(y)
              );

initial begin
repeat (10) begin
data = $random;
sel = $random;
#10;
end
end
endmodule
