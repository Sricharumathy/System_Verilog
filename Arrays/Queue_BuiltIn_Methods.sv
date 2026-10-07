module queue_methods;
  int que[$];
  int half;
  initial begin
    que='{10,20,30,40,50};
    $display("Initially Queue has %p",que);
    $display("Size of the Original Queue :%0d",que.size());
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
