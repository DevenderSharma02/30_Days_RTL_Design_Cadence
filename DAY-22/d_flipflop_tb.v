`timescale 1ns / 1ps

module d_ff_tb();

reg clk,rst_n;
reg d;
wire q;

d_ff_sync_reset uut(.clk(clk),
	             .rst_n(rst_n),
		     .d(d),
		     .q(q)
		     );

always #2 clk = ~clk;


initial begin
clk = 1'b0;
rst_n = 1'b0;
d = 1'b0;

#3 rst_n = 1'b1;

repeat (10) begin
d = $random;
#2;
end

rst_n = 1'b0;
#2 rst_n = 1'b1;

repeat (6) begin
d = $random;
#3;
end

$finish;
end

endmodule


