module jk_ff_tb();

reg clk,rst_n;
reg j,k;
wire q,q_bar;

jk_ff uut(.clk(clk), .rst_n(rst_n), .j(j), .k(k), .q(q), .q_bar(q_bar) );

always #5 clk = ~clk;

initial begin
clk = 0;
rst_n = 1;
j = 0;
k = 0;

rst_n = 0;
#10;
rst_n = 1;

#10;
j = 0; k = 0;
#20;

j=0; k=1;
#20;

j=1; k=0;
#20;

j=j; k=1;
#20;

$stop;
end

endmodule
