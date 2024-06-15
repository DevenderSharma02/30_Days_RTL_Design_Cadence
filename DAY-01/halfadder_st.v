// Half Adder Using Structural Modeling

`timescale 1ns / 1ps


module half_adder(a,b,sum,carry);

xor (sum,a,b);    
and (carry,a,b); 

endmodule