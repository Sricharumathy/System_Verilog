module tb;
  int que1[$]='{10,20,30};
  int que2[$]='{40,50,60};
  int res[$];
  initial begin
    res=que1;
    $display("Queue1:%p",que1);
    $display("Queue2:%p",que2);
    //using queue inbuilt methods
    foreach(que2[i]) begin
      que1.insert(que1.size(),que2[i]);
    end
    $display("After Inserting Queue1 :%p",que1);
    res={res,que2};
    $display("W/o Methods %p",res);
    
    
  end
endmodule



-----------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Queue1:'{10, 20, 30}
Queue2:'{40, 50, 60}
After Inserting Queue1 :'{10, 20, 30, 40, 50, 60}
W/o Methods '{10, 20, 30, 40, 50, 60}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
---------------------------------------------------------------
-----------------------
