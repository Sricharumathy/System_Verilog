module arithmetictb;
  int a = 5, b = 15;
  initial begin
    a += b;
    $display("a += b : %0d", a);
    a -= b;
    $display("a -= b : %0d", a);
    a *= b;
    $display("a *= b : %0d", a);
    a %= b;
    $display("a %%= b : %0d", a);
    a &= b;
    $display("a &= b : %0b --- %0d", a, a);
    a |= b;
    $display("a |= b : %0b --- %0d", a, a);
    a <<= b;
    $display("a <<= b : %0d", a);
    a >>>= b;
    $display("a >>>= b : %0d", a);
  end
endmodule

    
