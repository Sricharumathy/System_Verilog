module tb;
  string word="HELLO";
  initial begin
    $display("%s",word);
    foreach(word[i]) begin
      $display("%s",word[i]);
    end
  end
endmodule
