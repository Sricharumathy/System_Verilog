module enumtb;
  typedef enum{red,yellow,green} light;
  light a;
  initial begin
    a = red;
    $display("Color = %s", a.name());

    a = yellow;
    $display("Color = %s", a.name());

    a = green;
    $display("Color = %s", a.name());
  end
endmodule
