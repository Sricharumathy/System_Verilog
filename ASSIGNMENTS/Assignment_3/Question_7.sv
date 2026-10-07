module test();
  task dummy_task (input int x,string str);
    fork
      begin
        #x;
      end
      begin
        #10;
      end
    join_any
    disable fork;
      $display("%s is disabled at t =%0t",str,$time);
  endtask

initial begin
  fork
    begin
      #2;
      dummy_task(5,"call_1");
    end
    begin
      #1;
      dummy_task(15,"call_2");
    end
  join
end
endmodule

OUTPUT
------------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
call_1 is disabled at t =7
call_1 is disabled at t =11
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
