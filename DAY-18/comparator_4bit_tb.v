module tb_comparator_4bit;
    reg [3:0] A;
    reg [3:0] B;
    wire A_gt_B;
    wire A_lt_B;
    wire A_eq_B;

    // Instantiate the comparator
    comparator_4bit uut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        // Test cases
        A = 4'b0000; B = 4'b0000; #10;
        A = 4'b0001; B = 4'b0000; #10;
        A = 4'b0010; B = 4'b0011; #10;
        A = 4'b0100; B = 4'b0100; #10;
        A = 4'b1000; B = 4'b0111; #10;
        A = 4'b1111; B = 4'b1110; #10;
        A = 4'b1010; B = 4'b1010; #10;
        A = 4'b0110; B = 4'b1001; #10;
        
        // Finish simulation
        $finish;
    end

    initial begin
        $monitor("At time %t, A = %b, B = %b, A_gt_B = %b, A_lt_B = %b, A_eq_B = %b", $time, A, B, A_gt_B, A_lt_B, A_eq_B);
    end
endmodule




/*module tb;
  reg [3:0] A, B;
  wire A_grt_B, A_less_B, A_eq_B;
  
  comparator comp(A, B, A_grt_B, A_less_B, A_eq_B);
  
  initial begin
    $monitor("A = %0h, B = %0h -> A_grt_B = %0b, A_less_B = %0b, A_eq_B = %0b", A, B, A_grt_B, A_less_B, A_eq_B);
    repeat(5) begin
      A=$random; B=$random; #1;
    end
  end
endmodule*/







