`timescale 1ns / 1ps

module demux_1x2(data,sel,y0,y1);
input data,sel;
output y1,y0;
wire w1;

  not g1(w1,sel);
  and g2(y0,w1,data);
  and g3(y1,sel,data);
  
endmodule
