module tb;
  string variable;
  int val;
  initial begin
    variable="12345";
    val=variable.atoi();
    $display("val=%0d",val);
    val+=100;
    $display("Updated val=%0d",val);
  end
endmodule
