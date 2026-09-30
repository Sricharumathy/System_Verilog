typedef union packed{
  bit [15:0] raw;
  struct packed{
    bit [7:0] high;
    bit [7:0] low;
  }a;
}b;
module tb;
  b data;
  initial begin
  data.raw=32'hABCD;
  $display("%0h",data.raw);
  $display("%0h",data.a.high);
  $display("%0h",data.a.low);
  end
endmodule
    
