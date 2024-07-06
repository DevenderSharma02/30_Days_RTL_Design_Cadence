`timescale 1ns / 1ps

module d_ff_async_reset(clk,rst_n,d,q);
input clk,rst_n;
input d;
output reg q;


always @(posedge clk or negedge rst_n)begin
if(!rst_n)
      q <= 1'b0;
else
     q <= d;
end
endmodule
