module tb;
	string array [5] = '{"apple", "orange", "pear", "blueberry", "lemon"};
	initial begin
		for (int i = 0; i < $size(array); i++)
			$display ("array[%0d] = %s", i, array[i]);
	end
endmodule
