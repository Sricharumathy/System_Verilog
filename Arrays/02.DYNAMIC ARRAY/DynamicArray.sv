module dynamintb;
  int array[];
  initial begin
    array=new[5];
    array='{2,4,6,8,10};
    foreach(array[i]) begin
      $display("array[%0d]---%0d",i,array[i]);
    end
    $display(" size of the array :%0d",$size(array));
    $display("Array: %p",array);
    array.delete();
    $display("size of the array: %0d",$size(array));
    array='{3,6,9,12,15,18};
    foreach(array[i]) begin
      $display("array[%0d]---%0d",i,array[i]);
    end
    $display(" size of the array :%0d",$size(array));
    $display("Array: %p",array);   
  end
endmodule
