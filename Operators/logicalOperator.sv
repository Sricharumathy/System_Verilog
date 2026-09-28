module test;

  logic exp1, exp2;
  logic i1;
  logic i2;

  initial begin

    exp1 = 1;
    exp2 = 1;
    //equivqlence= (!exp1 || exp2);
    i1=exp1 -> exp2;
    $display("i1 = %0d", i1);
  end

endmodule
