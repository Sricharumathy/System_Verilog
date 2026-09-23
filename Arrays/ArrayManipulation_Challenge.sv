module practicetb;
  int vals[6]='{12, 5, 9, 5, 20, 9};
  int res[$];
  initial begin
    res=vals.find(x)with(x>8);
    $display("%p",res);
    vals.rsort();
    $display("%p",vals);
    //vals.sum();
    $display("%d",vals.sum());
  end
endmodule
