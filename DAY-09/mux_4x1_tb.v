`timescale 1ns / 1ps

module mux_4x1_tb();

reg [3:0]in;
reg [1:0]sel;
wire y;

mux_4x1 dut(.in(in),.sel(sel),.y(y));

initial begin
in = 0;
sel = 0;
  
repeat (10) begin
in = $random;
sel = $random;
#10;
end
$stop;

end

endmodule
