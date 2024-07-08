module jk_ff(clk,rst_n,j,k,q,q_bar);
input clk,rst_n;
input j,k;

output reg q;
output q_bar;

//always @(posedge clk or negedge rst_n)   // for asynchronous reset
always @(posedge clk)begin                 // for synchronous reset
if(~rst_n)
   q <= 1'b0;
else begin
case({j,k})
 2'b00 : q <= q;
 2'b01 : q <= 1'b0;
 2'b10 : q <= 1'b1;
 2'b11 : q <= ~q;
endcase
end
end

assign q_bar = ~q;

endmodule
