`timescale 1ns / 1ps

module up_down_counter_tb();
    
    reg clk;
    reg reset;
    reg up_down;

   
    wire [3:0] count;

   
    up_down_counter uut (
        .clk(clk),
        .reset(reset),
        .up_down(up_down),
        .count(count)
    );

  
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

  
    initial begin
       
        reset = 0;
        up_down = 0;

        // Apply reset
        #10 reset = 1;
        #10 reset = 0;

        // Test count up
        up_down = 1;
        #80;

        // Test count down
        up_down = 0;
        #70;

        // Apply reset while counting down
        reset = 1;
        #10 reset = 0;

       
        #50 $finish;
    end

  
    initial begin
        $monitor("At time %t, reset = %b, up_down = %b, count = %b", $time, reset, up_down, count);

    end
endmodule

