module dynamic_addtb;
  int array[];
  initial begin
    array=new[7];
    array='{7,14,21,28,35,42,49};
    $display("Size of the array:%0d",array.size());
    $display("Array:%p",array);
    array=new[array.size+3](array);
    $display("Size of the array:%0d",array.size());
    $display("Array:%p",array);
    for(int i=0;i<array.size();i++) begin
      if(i>=7) begin
        array[i]=(i+1)*7;
      end
    end
    $display("Loaded Array :%p",array);
  end
endmodule
    
