module logic_4states;
  logic [3:0] y;
  assign y=4'b10x1;
  initial begin
    #1;
    $display("y=%b",y);
  end
endmodule
