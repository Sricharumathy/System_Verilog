module tb;
  int que1[$];
  int que2[$];
  int res[$];
  initial begin
    res=que1;
    que1='{10,20,30,40,50}; 
    que2='{60,70,80,90,100};
    $display("Queue01:%p",que1);
    $display("Queue02:%p",que2);
    // using array methods
    foreach(que2[i]) begin
      que1.insert(que1.size(),que2[i]);
    end
    $display("After Inserting Que2 in Que1 w Array methods : %p",que1);
    // without using array methods
    res={res,que2};
    $display("After Inserting Que2 in Que1 w/o Array methods : %p",que1);
  end
endmodule


OUTPUT
------------------------------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Queue01:'{10, 20, 30, 40, 50}
Queue02:'{60, 70, 80, 90, 100}
After Inserting Que2 in Que1 w Array methods : '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
After Inserting Que2 in Que1 w/o Array methods : '{10, 20, 30, 40, 50, 60, 70, 80, 90, 100}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
