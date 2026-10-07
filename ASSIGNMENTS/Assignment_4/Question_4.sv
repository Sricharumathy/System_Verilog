module tb;
  int que[$:4];
  initial begin
    que='{10,20,30,40};
    $display("Original Queue %p",que);
    $display("Size of the Queue:%p",que.size());
    que.insert(1,1);
    $display("Insert 1 in the 1st Index:%p",que);
    que.delete(3);
    $display("Delete the 3rd Index:%p",que);
    que.insert(que.size(),9);
    $display("Insert 9 at the last Index:%p",que);
    que.shuffle();
    $display("After  Shuffle the Queue:%p",que);
    que.reverse();
    $display("After Reverse the Elements in the Queue:%p",que);
  end
endmodule


OUTPUT
----------------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Original Queue '{10, 20, 30, 40}
Size of the Queue:4
Insert 1 in the 1st Index:'{10, 1, 20, 30, 40}
Delete the 3rd Index:'{10, 1, 20, 40}
Insert 9 at the last Index:'{10, 1, 20, 40, 9}
After  Shuffle the Queue:'{9, 20, 1, 10, 40}
After Reverse the Elements in the Queue:'{40, 10, 1, 20, 9}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
