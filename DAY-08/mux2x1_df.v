`timescale 1ns / 1ps

module mux_2x1(y,i0,i1,sel);

input i0,i1,sel;
output y;


assign y = (~sel & i0) | (sel & i1);        //assign y = sel?i1:i0;


endmodule


