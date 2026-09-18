module state2 ;
  bit a=1'b1;
  byte b=8'h78;
  shortint c =16'd2500;
  int d =32'd66;
  longint e =64'd01020304;
  initial begin
    $display("a=%b,b=%b,c=%0b,d=%0b,e=%0b",a,b,c,d,e);
  end
endmodule
