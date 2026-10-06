module tb;
  int s;
  task  sum;
    input int a,b;
    output int res;
    res=a+b;
  endtask
  initial begin
    sum(10,35,s);
    $display("Value of S = %0d",s);
  end
endmodule
