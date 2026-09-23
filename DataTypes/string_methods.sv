module tb;
  string a="Hello";
  string b="World";
  string res="";
  initial begin
    $display("String 1 : %s",a);
    $display("String 2 : %s",b);
    if(a==b)
      $display("String 1 and 2 are Equal");
    else
      $display("String 1 and 2 are not Equal");
    foreach(a[i]) begin
      $display("%s",a[i]);
    end
    foreach(b[i]) begin
      $display("%s",b[i]);
    end
    res={a,b};
   
    
    $display("%s",res);
  end
endmodule
