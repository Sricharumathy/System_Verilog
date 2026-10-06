module tb;
  int s=5;
  function int sum();
    input int a,b;
    return a+b;
  endfunction
  initial begin
    $display("Function Call as Expression");
    $display(sum(10,15));
    $display("Calling Function with Void");
    void'(sum(10,5));//discarding the function return value
    s=s*(sum(10,5));
    $display(s);
  end
endmodule
