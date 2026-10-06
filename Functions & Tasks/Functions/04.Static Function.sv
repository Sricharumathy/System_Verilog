module static_automatic;
  function static increment();
    static int A;
    automatic int B;
    int C;
    A++;
    B++;
    C++;
    $display("Count of A=%0d , Count of B=%0d , Count of C=%0d",A,B,C);
  endfunction
  initial begin
    repeat(3) begin
      increment();
    end
  end
endmodule
    
