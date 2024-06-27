`timescale 1ns / 1ps

module demux_1x4_tb();
reg data;
reg [1:0] sel;
wire [3:0] y;

demux_1x4 uut(.data(data),
              .sel(sel), 
               .y(y)
             );

initial begin
repeat (10) begin
data = $random;
sel = $random;
#10;
end
$finish;
end
endmodule
