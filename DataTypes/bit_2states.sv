module state2;
  bit a=1;
  bit [3:0] b=4'b1100;
  initial begin
    $display("a=%b,b=%b",a,b);
  end
endmodule
