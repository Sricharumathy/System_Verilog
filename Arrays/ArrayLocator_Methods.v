module arraylocatetb;
  int array[8]='{1,3,5,7,9,11,13,15};
  int res[$];
  initial begin
    //find()
    res=array.find(x)with(x>7);
    $display("find(x) %p",res);
    //find_index()
    res=array.find_index()with(item==9);
    $display("Find Index of Value 9: res[%0d]",res[0]);
    //find_first()
    res=array.find_first()with(item>9 & item <15);
    $display("Find First %p",res);
    //find_last()
    res=array.find_last()with(item>9 & item <15);
    $display("Find last %p",res);
    //find_first_index()
    res=array.find_first_index(x)with(x>9);
    $display("Find First Index:%p",res);
    //find _last_index()
    res=array.find_last_index(x)with(x>9);
    $display("Find Last Index:%p",res); 
   end		
endmodule
