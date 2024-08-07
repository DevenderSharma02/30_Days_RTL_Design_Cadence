`timescale 1ns / 1ps

module up_down_counter(
                        input clk,reset,
                        input up_down,
                        output reg [3:0] count
                        );
                        
           always @(posedge clk)begin
           if(reset)
                count <= 4'b0000;
           else
             begin
             if(up_down)
                count <= count + 1;
             else
                count <= count - 1;
             end 
                  
           end      
endmodule
