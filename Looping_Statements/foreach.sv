module tb;
  int  arr[5]='{1,3,5,7,11};
  initial begin
    foreach(arr[i]) begin
      $display("arr[%0d]--> %0d",i,arr[i]);
    end
    end
endmodule
