module Unboundedqtb;
  int array[$];
  initial begin;
    array='{0,2,4,6,8};
    $display("%p",array);
    array.push_back(10);
    $display("%p",array);
    $display("%p",array.pop_back);
    array.push_front(1);
    $display("%p",array);
    
  end
endmodule
    
