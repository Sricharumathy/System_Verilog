module queue_methods;
  int que[$];
  int half;
  initial begin
    que='{10,20,30,40,50};
    $display("Initially Queue has %p",que);
    $display("Size of the Original Queue :%0d",que.size());
    /*-----insert 25 at n/2 position
    half=(que.size())/2;
    repeat(half) begin
      que.push_back(que.pop_front());
    end
    que.push_front(25);
    que.push_front(que.pop_back());
    que.push_front(que.pop_back());
    $display("%p",que);
    //insert 60 at the end
    que.push_back(60);
    $display("%p",que);
    //insert 5 at n-1 position
    que.push_front(que.pop_back());
    que.push_back(5);
    que.push_back(que.pop_front());
    $display("%p",que);-----*/
    //Insert 25 at n/2 position
    half=que.size()/2;
    que.insert(half,25);
    $display("Inserting 25 At size/2 position : %p",que);
    que.insert(que.size(),60);
    $display("Inserting 60 at the end position : %p",que);
    que.insert(que.size()-1,5);
    $display("Inserting  5 at size-1 position: %p",que);
    que.push_front(1);
    $display("Push_Front :%p",que);
    que.push_back(70);
    $display("Push_back :%p",que);
    $display("Pop_Front :%p",que.pop_front());
    $display("Pop_Back :%p",que.pop_back());
    $display("Final Queue:%p",que);      
  end
endmodule


OUTPUT
----------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Initially Queue has '{10, 20, 30, 40, 50}
Size of the Original Queue :5
Inserting 25 At size/2 position : '{10, 20, 25, 30, 40, 50}
Inserting 60 at the end position : '{10, 20, 25, 30, 40, 50, 60}
Inserting  5 at size-1 position: '{10, 20, 25, 30, 40, 50, 5, 60}
Push_Front :'{1, 10, 20, 25, 30, 40, 50, 5, 60}
Push_back :'{1, 10, 20, 25, 30, 40, 50, 5, 60, 70}
Pop_Front :1
Pop_Back :70
Final Queue:'{10, 20, 25, 30, 40, 50, 5, 60}
xmsim: *W,RNQUIE: Simulation is complete.
