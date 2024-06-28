`timescale 1ns / 1ps

module demux_1x8(data,sel,y);
input data;
input [2:0]sel;
output reg [7:0] y;

always @(*)begin
y = 8'b0000_0000;
case(sel)
    3'b000 : y[0] = data;
    3'b001 : y[1] = data;
    3'b010 : y[2] = data;
    3'b011 : y[3] = data;
    3'b100 : y[4] = data;
    3'b101 : y[5] = data;
    3'b110 : y[6] = data;
    3'b111 : y[7] = data;
    default: y = 8'b0000_0000;
endcase
end

endmodule