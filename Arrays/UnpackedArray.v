module unpackedtb;
  byte data[8];
  initial begin
    foreach(data[i]) begin
      data[i]=$urandom;
      $display("data[%0d]---%b(%d)",i,data[i],data[i]);
    end
    $display("%p",data);
  end
endmodule
