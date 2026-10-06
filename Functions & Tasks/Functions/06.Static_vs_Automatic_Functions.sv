module counter_comparison;
  function static int  static_counter();
     int countA;
    countA++;
    return countA;
  endfunction
  function automatic int  automatic_counter();
    int countB;
    countB++;
    return countB;
  endfunction
  initial begin
    repeat(3) begin
      $display("Static Counter A = %0d",static_counter());
    end
    repeat(3) begin
      $display("Automatic Counter B = %0d",automatic_counter());
    end
  end
endmodule
    
