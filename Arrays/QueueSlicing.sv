module qslicetb;
  int array[$]='{1,2,3,4,5,6};
  initial begin
    $display(" Initial Array : %p",array);
    $display("get all the elements from index 3 : %p",array[3:$]);
    array[$+1]=100;
    $display("%p",array);
  end
endmodule
