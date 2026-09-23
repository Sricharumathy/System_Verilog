module reductiontb;
int array[4] = '{2, 4, 6, 8};
  int res[$];
  initial begin
    $display ("sum     = %0d", array.sum());
    $display ("product = %0d", array.product());
    $display ("and     = 0x%0h", array.and());
    $display ("or      = 0x%0h", array.or());
    $display ("xor     = 0x%0h", array.xor());
  end
endmodule
