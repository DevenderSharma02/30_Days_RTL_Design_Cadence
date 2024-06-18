module fullsubtractor_tb();

reg a,b,c;
wire difference,borrow;

full_subtractor uut(.a(a),
		    .b(b),
		    .c(c),
		    .difference(difference),
		    .borrow(borrow)
		  );

initial begin
a=1'b0;
b=1'b0;
c=1'b0;
end

always #10 a = ~a;
always #20 b = ~b;
always #30 c = ~c;

endmodule
