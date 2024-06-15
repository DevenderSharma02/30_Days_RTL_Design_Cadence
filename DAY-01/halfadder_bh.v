// Half Adder Using Behavioral Modeling

`timescale 1ns / 1ps

module half_adder(a,b,sum,carry);

  input a,b;
  output reg sum,carry;

  always @(a or b)
    begin
      {carry,sum} = a + b;
    end

endmodule