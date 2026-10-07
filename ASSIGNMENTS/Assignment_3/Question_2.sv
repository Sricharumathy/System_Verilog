module test();
  int d, d1;
  int a = 2, b = 3;
  int x = 2, y = 4;

  function automatic void mult(
     ref int a,
    ref int b,
    output int c
  );
    c = (a * b) + 2;
    a++;
    $display("------------ inside function -----------------");
    $display("@time t = %0d: a = %0d and b = %0d and c = %0d",
             $time, a, b, c);

  endfunction

  initial begin
    fork
      begin
        #1;
        mult(a, b, d);
        $display("---------------- Begin block1 -----------------");
        $display("@time t = %0d: a = %0d and b = %0d and d = %0d",
                 $time, a, b, d);
      end
      begin
        #2;
        mult(x, y, d1);
        $display("---------------- Begin block2 -----------------");
        $display("@time t = %0d: x = %0d and y = %0d and d1 = %0d",
                 $time, x, y, d1);
      end
    join
  end
endmodule

OUTPUT
---------------------------------------------------------------------------
xcelium> run
------------ inside function -----------------
@time t = 1: a = 3 and b = 3 and c = 8
---------------- Begin block1 -----------------
@time t = 1: a = 3 and b = 3 and d = 8
------------ inside function -----------------
@time t = 2: a = 3 and b = 4 and c = 10
---------------- Begin block2 -----------------
@time t = 2: x = 3 and y = 4 and d1 = 10
xmsim: *W,RNQUIE: Simulation is complete.
