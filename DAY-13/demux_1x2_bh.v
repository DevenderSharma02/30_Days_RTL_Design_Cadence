`timescale 1ns / 1ps

module demux_1x2(data,sel,y0,y1);
input data,sel;
output reg y1,y0;

  always @(data or sel)begin
    if(sel==0)
    begin
      y0 = data;
      y1 = 0;
    end
    else 
      begin
      y0 = 0;
      y1 = data;
      end
end
endmodule
