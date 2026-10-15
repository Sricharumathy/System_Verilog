module arraylocatetb;
  string array[9]='{"swathi","shan","charu", "megala","charu","logesh", "dhereesh","logesh", "vino"};
  string res[$];
  int res1[$];
  initial begin
     //min()
    res=array.min();
    $display("Array Minimum :%p",res);
    //max()
    res=array.max();
    $display("Array Maximum :%p",res);
    //Greater than lokesh
    res=array.find(x)with(x>"logesh");
    $display("Find elements greater than lokesh %p",res);
    res1=array.find_index(x)with(x>"logesh");
    $display("Find elements greater than lokesh %p",res1);
    //unique()
    res=array.unique();
    $display("Unique Elements:%p",res);
    //unique() with clause
    res.sort();
    $display("sorting Elements:%p",res);
    //unique_index
    res1=res.unique_index();
    $display("Unique Index:%p",res1); 
  end
endmodule
