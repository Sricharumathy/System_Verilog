module tb;
  int a,b,c=2,d=6,e=10;
  initial begin
    a=d++;
    $display(a);
    $display(d);
    d++;
    $display(d);
    b=++d;
    $display(b);
    c*=d;
    $display(c);
    c>>=1;
    $display(c);
    e%=3;
    $display(e);
    e+=2;
    $display(e);
  end
endmodule
