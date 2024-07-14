`timescale 1ns / 1ps

module tb_moore_seq_detector();
reg clk,reset,in;
wire y;

moore_seq_detector uut (
        .clk(clk), 
        .reset(reset), 
        .in(in), 
        .y(y)
    );
    
    
 initial begin
       
        clk = 0;
        reset = 0;
        in = 1;
       end
 
 always #10 clk = ~clk;
  
       initial begin
        // Reset the sequence detector
        reset = 1;
        #10;
        reset = 0;
        #10;

         repeat (5) begin
        // Apply sequence 011011
        in = 0; #20;
        in = 1; #20;
        in = 1; #20;
        in = 0; #20;
        in = 1; #20;
        in = 1; #20;
         end
              
        
        #100;
        $stop;
    end
  
endmodule 