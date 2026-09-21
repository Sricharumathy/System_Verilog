module statictb;
  bit [3:0] mdata;
  initial begin
    mdata='{1,1,0,0};
    $display("%p -- %b",mdata,mdata);
    for(int i=0;i<$size(mdata);i++) begin
      $display("mdata[%0d]=%b",i,mdata[i]);
    end
  end
endmodule
