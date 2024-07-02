`timescale 1ns / 1ps

module priority_encoder_8to3(
    input [7:0] in,
    output reg [2:0] y
);

  always @(in) begin
    casex(in)
      8'b0000_0001 : y = 3'b000;
      8'b0000_001x : y = 3'b001;
      8'b0000_01xx : y = 3'b010;
      8'b0000_1xxx : y = 3'b011;
      8'b0001_xxxx : y = 3'b100;
      8'b001x_xxxx : y = 3'b101;
      8'b01xx_xxxx : y = 3'b110;
      8'b1xxx_xxxx : y = 3'b111;
      default : $display("Invalid data received");
    endcase
  end
endmodule
  