module assomethodstb;
  int aa[int];
  int idx;
  initial begin
    aa[11]=2;
    aa[23]=4;
    aa[35]=8;
    aa[47]=16;
    aa[59]=32;
    $display("Initial Array: %p",aa);
    //num()
    $display("Number of Entries in the Array: %0d",aa.num());
    //size()
    $display("Size of the Array: %0d",aa.size());
    //exists()
    $display("Does index 30 exist? %0d",aa.exists(30));
    $display("Does index 47 exist? %0d",aa.exists(47));
    //first()
    if(aa.first(idx))
      $display("First Index: %0d ",idx,"First Value: %0d",aa[idx]);
    //last()
    if(aa.last(idx))
      $display("Last Index: %0d ",idx,"Last Value: %0d",aa[idx]);
    //next()
    idx=23;
    if(aa.next(idx))
      $display("Next Index: %0d ",idx,"Next Value: %0d",aa[idx]);
    //prev()
    idx=59;
    if(aa.prev(idx))
      $display("Previous Index: %0d ",idx,"Previous Value: %0d",aa[idx]);
    //delete()
    aa.delete(35);
    $display(" After Delete the index 35: %p",aa);
    //size();
    $display("After Delete Size of the Array: %0d",aa.size());
   end
endmodule
