`timescale 1ns / 1ps

module b2g_converter_tb();

reg [3:0]binary;
wire [3:0]gray;


binary_2_Gray_Conveter uut(.binary(binary),.gray(gray));

integer i;

initial 
begin
     for(i=1;i<11;i=i+1)begin
     binary = $random;
     #10;
     end

end
endmodule
