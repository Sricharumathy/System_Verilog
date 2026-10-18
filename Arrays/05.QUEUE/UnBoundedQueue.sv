module Unboundedqtb;
  int array[$];
  initial begin;
    array='{0,2,4,6,8};
    $display("%p",array);
    array.push_back(10);
    $display("push the element in the back %p",array);
    $display("popping the last element %p",array.pop_front);
    $display("After pop elements in the array  %p",array);
    $display("popping the first element %p",array.pop_back);
    array.push_front(1);
    $display(" push the element in the front %p",array);
  end
endmodule
    
