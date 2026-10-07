module test();

  int d, result;
  int a = 2, b = 3;

  function automatic void mult(
    input int a,
    input int b,
    output int c
  );

    c = (a * b) + 2;

    $display("------------ inside function -----------------");
    $display("@time t = %0d: a = %0d and b = %0d and c = %0d",
             $time, a, b, c);

  endfunction

  initial begin

    fork

      begin
        #1;
        mult(2,3,d);
        $display("---------------- Begin block1 -----------------");
        $display("@time t = %0d: a = %0d and b = %0d and d = %0d",
                 $time, a, b, d);
      end

      begin
        #2;
        mult(2,4,d);
        $display("---------------- Begin block2 -----------------");
        $display("@time t = %0d: a = %0d and b = %0d and d = %0d",
                 $time, a, b, d);
      end

    join

  end

endmodule




OUTPUT :
--------------------------------------------------------------------------------------------
------------ inside function -----------------
@time t = 1: a = 2 and b = 3 and c = 8
---------------- Begin block1 -----------------
@time t = 1: a = 2 and b = 3 and d = 8
------------ inside function -----------------
@time t = 2: a = 2 and b = 4 and c = 10
---------------- Begin block2 -----------------
@time t = 2: a = 2 and b = 3 and d = 10
