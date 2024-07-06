module sr_ff_async_tb();

reg clk,rst;
reg s,r;
wire q,q_bar;

sr_flipflop_async uut(.clk(clk), .rst(rst), .s(s), .r(r), .q(q), .q_bar(q_bar) );

always #5 clk = ~clk;

initial begin
clk = 0;
rst = 0;
s = 0;
r = 0;

#10 rst = 1;
#10 rst = 0;

#10 s = 1; r = 0;
#10 s = 0; r = 0;
#10 s = 0; r = 1;
#10 s = 0; r = 0;
#10 s = 1; r = 1;
#10 s = 0; r = 0;
#20 $stop;
end

endmodule
