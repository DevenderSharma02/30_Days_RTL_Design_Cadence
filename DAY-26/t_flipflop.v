`timescale 1ns / 1ps

module T_flipflop(
        input clk,
        input reset_n,
        input t,
        output reg q,
        output q_bar
    );

//always @(posedge clk)          //     for synchronous reset
always @(posedge clk or negedge reset_n) begin      //for asynchronous reset
    if (!reset_n)
        q <= 1'b0;
    else if (t)
        q <= ~q;
    else
        q <= q;
     end   
     
     
 assign q_bar = ~q;
 
endmodule