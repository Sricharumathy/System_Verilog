module tb;
  int x,y,z;
  function automatic int sum(ref int a, ref int b);
    a=a+b;//40
    b=a+b;//60
    return a+b;//100
  endfunction
  initial begin
    x=20;
    y=20;
    $display("x=%0d ",x," y=%0d",y);
    z=sum(x,y);
    $display("x=%0d ",x," y=%0d ",y," z=%0d",z);
  end
endmodule
