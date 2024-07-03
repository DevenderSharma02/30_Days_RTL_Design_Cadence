`timescale 1ns / 1ps

module decoder_3to8_tb();
  reg [2:0] in;
  wire [7:0] y;
  
  decoder_3to8 uut(.in(in),
                   .y(y)
                  );
  
  initial begin
    $monitor("in = %d => y = %0b",in,y);
    
    repeat (10) begin
      in = $random;
      #10;
    end
  end

endmodule
