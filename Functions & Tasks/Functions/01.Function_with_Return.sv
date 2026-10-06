module tb;
  int s;
  int tot=0;
  function int sum(int a,int b); 
    tot=a+b;
    return tot;
  endfunction
  initial begin
    s=sum(10,20);
    $display("Value of Total=%0d",s);
  end
endmodule
