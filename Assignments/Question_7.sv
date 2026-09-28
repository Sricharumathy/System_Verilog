module tb;
  bit [11:0] myarray[4];
  initial begin
    myarray[0]=12'h012;
    myarray[1]=12'h345;
    myarray[2]=12'h678;
    myarray[3]=12'h9AB;
    
    $display("%p",myarray);
    for(int i=0;i<4;i++) begin
      $display("myarray[%0d][5:4] is %b",i,myarray[i][5:4]);
    end
    
    foreach(myarray[i]) begin
      $display("myarray[%0d][5:4] is %b",i,myarray[i][5:4]);
    end
  end
endmodule
      
