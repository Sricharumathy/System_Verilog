module tb;
  typedef union packed {
    bit [7:0] data;
    bit [1:0][3:0] nibble;
  } my_union;

  my_union val;

  initial begin
    val.data = 8'hA5;

    $display("data   = %h--%0b", val.data,val.data);
    $display("nibble = %h %h",
             val.nibble[1], val.nibble[0]);
  end
endmodule
