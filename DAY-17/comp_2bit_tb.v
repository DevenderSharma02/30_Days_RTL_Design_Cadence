`timescale 1ns / 1ps

module tb_comparator_2bit;
  
  reg [1:0] a,b;
  wire a_gt_b, a_lt_b, a_eq_b;
  
  comparator_2bit uut(.a(a),
                      .b(b),
                      .a_gt_b(a_gt_b),
                      .a_lt_b(a_lt_b),
                      .a_eq_b(a_eq_b)
                     );
  
  initial begin
    repeat (20) begin
      a = $random;
      b = $random;
      #10;
    end
  end
  
  
endmodule