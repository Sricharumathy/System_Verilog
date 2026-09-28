odule equalitytb;
  logic [3:0] a, b;

  initial begin
    //Logic equality
    a = 4'b1010;
    b = 4'b1010;
    if (a == b)
      $display("%b == %b : Equal", a, b);
    else
      $display("%b == %b : Unequal", a, b);

    a = 4'b1010;
    b = 4'b1001;
    if (a == b)
      $display("%b == %b : Equal", a, b);
    else
      $display("%b == %b : Unequal", a, b);

    a = 4'b1010;
    b = 4'b10x0;
    if (a == b)
      $display("%b == %b : Equal", a, b);
    else
      $display("%b == %b : Unequal", a, b);


  //Case Equality
    a = 4'b10x1;
    b = 4'b10x1;
    if (a === b)
      $display("%b === %b : Equal", a, b);
    else
      $display("%b === %b : Unequal", a, b);

    a = 4'b10x1;
    b = 4'b1001;
    if (a === b)
      $display("%b === %b : Equal", a, b);
    else
      $display("%b === %b : Unequal", a, b);
    
    a = 4'b10z1;
    b = 4'b10z1;
    if (a === b)
      $display("%b === %b : Equal", a, b);
    else
      $display("%b === %b : Unequal", a, b);


  //Wildcard Equality  
    a = 4'b1011;
    b = 4'b10x1;
    if (a ==? b)
      $display("%b ==? %b : Equal", a, b);
    else
      $display("%b ==? %b : Unequal", a, b);

    a = 4'b1011;
    b = 4'b1z11;
    if (a ==? b)
      $display("%b ==? %b : Equal", a, b);
    else
      $display("%b ==? %b : Unequal", a, b);

    a = 4'b1011;
    b = 4'b1101;
    if (a ==? b)
      $display("%b ==? %b : Equal", a, b);
    else
      $display("%b ==? %b : Unequal", a, b);

  end
endmodule
