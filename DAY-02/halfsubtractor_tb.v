module half_subtractor_tb();

reg a,b;
wire difference,borrow;

half_subtractor uut(.a(a),
		    .b(b),
		    .difference(difference),
		    .borrow(borrow)
			);

initial begin

a=0;b=0;
#10;
a=0;b=1;
#10;
a=1;b=0;
#10;
a=1;b=1;
#10;
$stop;
end 
endmodule

