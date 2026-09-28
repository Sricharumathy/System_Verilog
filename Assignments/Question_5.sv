module tb;
  string  str;
  byte ascii;
  initial begin
    str="SystemVerilog";
    $display("Original String: %s",str);
    ascii=str.getc(2);
    $display("Ascii Value of the first Character= %d",ascii);
    $display("String in UpperCase: %s",str.toupper());
    $display("Concatenated String:",{str , "3.1a"});
    str.putc(str.len()-1 ,"b");
    $display("After replace the last character %s",str);
    $display("Substring %s ",str.substr(1,4));
                                      
  end
endmodule
