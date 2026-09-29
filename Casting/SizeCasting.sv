module tb;
  logic[3:0]a;
  logic [7:0] b;
  initial begin
    a=4'b1010;;
    b=8'(a);
    $display("a is %2b",a);
    $display("b is %8b",b);
  end
endmodule
