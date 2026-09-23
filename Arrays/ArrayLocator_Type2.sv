module arraylocatetb;
  int array[9]='{4, 7, 2, 5, 7, 1, 6, 3, 1};
  int res[$];
  initial begin
     //min()
    res=array.min();
    $display("Array Minimum :%p",res);
    //max()
    res=array.max();
    $display("Array Maximum :%p",res);
    //unique()
    res=array.unique();
    $display("Unique Elements:%p",res);
    //unique() with clause
    res=array.unique(x) with (x>5);
    $display("Unique Elements:%p",res);
    //unique_index
    res=array.unique_index();
    $display("Unique Index:%p",res); 
  end
endmodule
