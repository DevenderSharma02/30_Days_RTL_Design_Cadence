`timescale 1ns / 1ps

module async_up_counter_tb();

    // Inputs
    reg clk = 0;
    reg reset = 0;

    // Outputs
    wire [3:0] count;

    async_up_counter uut (
        .clk(clk),
        .reset(reset),
        .count(count)
    );
   
    always #5 clk = ~clk; 

    
    initial begin
        
        reset = 1;
        #10;
        reset = 0;
        #10;

        
        #200;  

      
        $finish;
    end

endmodule
