`timescale 1ns / 1ps

module priority_encoder_8to3_tb();
  
  reg [7:0] in;
  wire [2:0] y;
  
  
  priority_encoder_8to3 uut(.in(in),
                   .y(y)
                  );
  
  initial begin
    $monitor("in = %b => y = %b",in,y);
    repeat (10) begin
      in = $random;
      #10;
    end
  end
  
endmodule
