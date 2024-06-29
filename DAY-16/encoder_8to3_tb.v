`timescale 1ns / 1ps

module encoder_8to3_tb();
    reg en;
    reg [7:0] in;
    wire [2:0] y;

    // Instantiate the encoder
    encoder_8to3 uut (
        .en(en),
        .in(in),
        .y(y)
    );

    initial begin
        
        en = 0; in = 8'b00000000; #10;
        en = 0; in = 8'b10101010; #10;
        
        en = 1; in = 8'b00000001; #10;
        en = 1; in = 8'b00000010; #10;
        en = 1; in = 8'b00000100; #10;
        en = 1; in = 8'b00001000; #10;
        en = 1; in = 8'b00010000; #10;
        en = 1; in = 8'b00100000; #10;
        en = 1; in = 8'b01000000; #10;
        en = 1; in = 8'b10000000; #10;
        en = 1; in = 8'b00000000; #10; // Default case
        en = 1; in = 8'b00010010; #10; // Invalid case (multiple bits set)
        
        // Finish simulation
        $finish;
    end

    initial begin
        $monitor("At time %t, en = %b, in = %b, y = %b", $time, en, in, y);
    end
endmodule
