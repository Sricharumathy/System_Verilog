module multipackedtb;
  bit [2:0][3:0][7:0] data;
  initial begin
    data[0]=32'h21102004;
    data[1]=32'hfacecafe;
    data[2]=32'h91092263;
    $display("data=%0h",data);
    for(int i=0;i<$size(data);i++) begin
      $display("data[%0d]=%0h",i,data[i]);
      for(int j=0;j<$size(data,2);j++) begin
        $display("data[%0d][%0d]=%0h",i,j,data[i][j]);
      end
    end
  end
endmodule
    
