module tb;
  string a;
  string res="";
  int n;
  initial begin
    a="SystemVerilog";
    // res={<<8{a}};
    for(int i=a.len()-1;i>=0;i--) begin
      res={res,$sformatf("%c",a[i])};
    end
    
    $display("Original String %s",a);
    $display("Reverse String %s",res);
  end
endmodule
