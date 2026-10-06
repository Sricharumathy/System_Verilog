module tb;
  function void display(real x, string y);
    $display("x = %0f, y = %0s", x, y);   
  endfunction
  initial begin
    display(.y("Welcome to We_LSI"), .x(20.23));
  end
endmodule
