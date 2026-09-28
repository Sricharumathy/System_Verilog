module insidetb;
   int a=15;
  initial begin
    if(a inside {[10:20],30,50})
       $display("Match Found");
    else
      $display("Not Match Found");
  end
endmodule
