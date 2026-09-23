module ordertb;
  int array[9] = '{4, 7, 2, 5, 7, 1, 6, 3, 1};

  initial begin
    array.reverse();
    $display ("reverse  : %p", array);
    array.sort();
    $display ("sort     : %p", array);
	array.rsort();
    $display ("rsort    : %p", array);
    for (int i = 0; i < 5; i++) begin
    	array.shuffle();
      $display ("shuffle Iter:%0d  = %p", i, array);
    end
  end
endmodule
