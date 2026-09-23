module tb;
  bit [63:0] asso[longint unsigned];
  longint unsigned idx;
  initial begin
    idx=1;
    repeat(64) begin
      asso[idx]=idx;
      idx=idx<<1;
    end
    $display("associative array=%p",asso);
    if(asso.first(idx))
      $display("first value: %p",idx);
    if(asso.next(idx))
      $display("next value: %p ",idx);
    if(asso.last(idx))
      $display("last value: %d",idx);
    if(asso.prev(idx))
      $display("previous value : %p",idx);
  end
endmodule
