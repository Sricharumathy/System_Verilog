// Code your testbench here
// or browse Examples
module tb;
  int d[],d1[];
  initial begin
    d=new[6];
    d='{9,1,8,3,4,4};
    d1=new[6];
    for(int i=0;i<$size(d1);i++)
      d1[i]=i;
    $display("%p %0d",d1,$size(d1));
    d1.delete();
    $display("%p and %d",d1,$size(d1));
    d.reverse();
    $display("%p",d);
    d.sort();
    $display("%p",d);
    d.rsort();
    $display("%p",d);
    d.shuffle();
    $display("%p",d);
  end
endmodule
          
