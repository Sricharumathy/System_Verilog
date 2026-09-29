module tb;
  int a;
  byte b;
  initial begin
    a=25;
    b=byte'(a);
    
    $display("a is %0d",a);
    $display("b is %0b",b);
  end
endmodule
    
