module packunpacktb;
  bit [3:0][7:0] data [2][4];
  initial begin
    foreach(data[i]) begin
      foreach(data[i][j])begin
        data[i][j]=$random;
        $display("data[%0d][%0d]----%0h",i,j,data[i][j]);
      end
    end
    $display("%p",data);
  end
endmodule
      
