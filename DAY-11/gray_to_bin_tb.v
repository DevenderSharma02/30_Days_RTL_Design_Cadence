`timescale 1ns / 1ps

module gray_to_binary_tb();

reg [3:0]gray;
wire [3:0]binary;

gray_2_binary_conveter uut(.binary(binary),.gray(gray));
  
initial begin
repeat (10) begin
gray = $random;
#10;

end
$finish;
end

endmodule
