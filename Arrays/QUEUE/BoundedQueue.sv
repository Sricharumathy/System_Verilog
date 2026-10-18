module boundedqtb;
  int array[$:5];
  initial begin
    array='{1,4,9,14,25};
    $display(" initial array %p",array);
    foreach(array[i]) begin
      $display("%0d",array[i]);
    end
    array.push_back(36);
    $display("%p",array);
    array.push_back(49);
    $display("%p",array); //queue overflow
    $display("%p",array.pop_front);
    $display("After Push and Pop Operation Array is %p",array);  
    
  end
endmodule
    
