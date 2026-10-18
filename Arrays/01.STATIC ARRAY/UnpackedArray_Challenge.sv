module regfiletb;
  bit [15:0] regfile[4];
  initial begin
    foreach(regfile[i]) begin
      regfile[i]=$random;
      $display("Regfile[%0d]--->%0h",i,regfile[i]);
    end
    $display("%p",regfile);
    $display("%0h",regfile[2]);
  end
endmodule
