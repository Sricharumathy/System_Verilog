module string_dt;
  string name = "SystemVerilog";
  initial $display("Name = %s, Length = %0d", name, name.len());
endmodule
