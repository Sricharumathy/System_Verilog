module tb;
  int s;
  int tot=0;
  function void sum(int a,int b); 
    tot=a+b;
    $display("At time = %0t: Value of Total=%0d",$time,tot);  
  endfunction
  initial begin
    #10;
    sum(10,20);
    #20;
    sum(10,5);  
  end
endmodule
