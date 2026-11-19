class myclass;
  bit [2:0] header;
  bit encode;
  bit [2:0] mode;
  bit [7:0] data;
  bit stop;
  function new(bit[2:0] header=3'd7,bit [2:0] mode=5);
    this.header=header;
    this.mode=mode;
    this.encode=0;
    this.stop=1;
  endfunction
  function void display();
    $display("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Stop = %0b",this.header, this.encode, this.mode, this.stop);
  endfunction  
endclass
