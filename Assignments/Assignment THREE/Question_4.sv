module test();
int d, result;
int a = 2, b = 3;
  task automatic mult (input int a, input int b, output int c);
    #5;
    c = (a*b)+2;
    a++;
    $display("---------Inside Function-----------");
    $display("@time t = %0d: a = %0d and b = %0d and c =%0d",$time,a,b,c);
  endtask
initial begin
fork
  begin
  #1;
  mult(a,b,d);
  $display("------------------Begin block1--------------------");
  $display("@time t = %0d: a = %0d and b = %0d and d = %0d",$time,a,b,d);
  end
  begin
  #2;
  mult(a,b,d);
  $display("----------------Begin block2--------------------");
  $display("@time t = %0d: a = %0d and b = %0d and d = %0d",$time,a,b,d);
  end
join
end
endmodule

OUTPUT:
---------------------------------------------------------------------------------
xcelium> run
---------Inside Function-----------
@time t = 6: a = 3 and b = 3 and c =8
------------------Begin block1--------------------
@time t = 6: a = 2 and b = 3 and d = 8
---------Inside Function-----------
@time t = 7: a = 3 and b = 3 and c =8
----------------Begin block2--------------------
@time t = 7: a = 2 and b = 3 and d = 8
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
