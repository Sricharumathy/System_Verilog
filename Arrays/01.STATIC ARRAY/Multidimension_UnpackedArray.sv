module md_unpackedtb;
  byte stack[2][4];
  initial begin
    for(int i=0;i<2;i++) begin
      for(int j=0;j<4;j++)begin
        stack[i][j]=$random;
        $display("stack[%0d][%0d]:%b",i,j,stack[i][j]);
      end
    end
    $display("%p",stack);
  end
endmodule
