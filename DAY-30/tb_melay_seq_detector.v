`timescale 1ns / 1ps


module tb_melay_seq_detector();
reg clk,reset,in;
wire y;

mealy_seq_detector uut (
        .clk(clk), 
        .reset(reset), 
        .in(in), 
        .y(y)
    );
    
    
    
 initial begin
       
        clk = 0;
        reset = 0;
        in = 0;
       end
 
 always #10 clk = ~clk;
       initial begin
        // Reset the sequence detector
        reset = 1;
        #10;
        reset = 0;
        #10;

        // Apply sequence 11011
        in = 1; #20;
        in = 1; #20;
        in = 0; #20;
        in = 1; #20;
        in = 1; #20;
       // Wait and apply another sequence
        #40;
        in = 1; #20;
        in = 1; #20;
        in = 0; #20;
        in = 1; #20;
        in = 1; #20;
        // Apply reset during sequence
        in = 1; #10;
        reset = 1; #10;
        reset = 0; #10;
        in = 1; #20;
        in = 0; #20;
        in = 1; #20;
        in = 1; #20;

        #100;
        $stop;
    end

endmodule

