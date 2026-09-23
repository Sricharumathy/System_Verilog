module dynamethodstb;
  string basket[];
  initial begin
    basket=new[3];
    basket='{"Apple","Banana","Cherry"};
    $display("%p",basket);
    $display("Size of the Basket: %0d",basket.size());
    basket.delete();
    $display("After Delete the Basket, Size  is :%0d",basket.size());
    $display("%p",basket);
  end
endmodule
