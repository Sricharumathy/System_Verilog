module queuetb;
  int jack[$:7];
  initial begin
    jack='{11,22,33,44,55,66,77};
    foreach(jack[i]) begin
      $display("%0d",jack[i]);
    end
    $display("%p",jack);
    jack.pop_back();
    $display("%p",jack);
    jack.push_back(88);
    $display("%p",jack);
    
   end
  
endmodule
