`timescale 1ns / 1ps

module T_flipflop_tb;
reg clk, reset_n;
reg t;
wire q, q_bar;

T_flipflop uut(.clk(clk),
               .reset_n(reset_n),
               .t(t),
               .q(q),
               .q_bar(q_bar)
               );
               
initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end           
      
 initial begin
    // Initialize signals
    reset_n = 1;
    t = 0;

    // Apply asynchronous reset
    #10 reset_n = 0; 
    #10 reset_n = 1; 

    // Test toggling behavior
    #10 t = 1; 
    #20 t = 0; 

    // Apply reset again
    #10 reset_n = 0;  
    #10 reset_n = 1; 

    // More toggling
    #10 t = 1;  
    #20 t = 0; 
    #10 t = 1; 

    
    #30 $finish;
  end
  
  initial begin
    $monitor("Time: %0d, clk: %b, reset_n: %b, t: %b, q: %b", $time, clk, reset_n, t, q);
  end
  
endmodule
