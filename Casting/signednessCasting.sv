
module tb;
  logic [7:0] val;

  initial begin
    val = 8'b11111111;

    $display("Binary   = %08b", val);
    $display("Unsigned = %0d", unsigned'(val));
    $display("Signed   = %0d", signed'(val));
  end
endmodule
