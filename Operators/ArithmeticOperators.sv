module arithmetictb;
  int a=5,b=15;
  initial begin
    a+=b;
    $display("%d",a);
    a-=b;
    $display("%d",a);
    a*=b;
    $display("%d",a);
    a%=b;
    $display("%d",a);
  end
endmodule
    
