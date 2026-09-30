module tb;
  struct{
    string fruit;
    int count;
    byte expiry;
  }st_box;
  
  initial begin
    st_box='{"apple",8,15};
    $display("Box has %p",st_box);
    st_box.fruit="Strawberry";
    st_box.expiry=20;
    $display("Box has %p",st_box);
  end
endmodule
