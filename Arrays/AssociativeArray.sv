module assoarraytb;
  int array[int];
  string array1[int];
  initial begin
    array='{1:5,3:10,5:15,7:20};
    $display("Associative Array: %p",array);
    foreach(array[i]) begin
      $display("Elements of the array %0d", array[i]);
    end
    
    array1='{1:"Abi",6:"Banu",9:"Charu"};
    $display("Associative Array: %p",array1);
    foreach(array1[j]) begin
      $display("Elements of the array1 %s", array1[j]);
    end
  end
endmodule
