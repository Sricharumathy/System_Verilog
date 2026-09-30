typedef struct packed{
  bit [3:0] mode;
  bit [2:0] cfg;
  bit enb;
}st_word;
module tb;
  st_word key;
  initial begin
    key='{4'd10,3'd5,1};
    $display("%p",key);
    key.mode=4'b010;
    $display("%p",key);
    key.enb=0;
    $display("%p",key);
    key =8'hfa;
    $display("%p",key);
    
  end
endmodule
