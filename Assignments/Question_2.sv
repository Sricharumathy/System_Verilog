module tb;
  int j;
  int q [$];
  initial begin
    j=1;
    q='{0,2,5};
    $display("Queue = %p",q);
    q.insert(1,j);
    $display("Queue after insert = %p",q);
    q.delete(1);
    $display("Queue after delete 1st index = %p",q);
    q.push_front(7);
    $display("Queue after push  front = %p",q);
    q.push_back(9);
    $display("Queue after push  back = %p",q);
    q.pop_back();
    $display("Queue after Popping back = %p",q);
    q.pop_front();
    $display("Queue after popping front = %p",q);
    q.reverse();
    $display("Queue after Reverse = %p",q);
    q.sort();
    $display("Queue after Sort = %p",q);
    q.rsort();
    $display("Queue after Reverse Sort = %p",q);
    q.shuffle();
    $display("Queue after Shuffle = %p",q);
  end
endmodule

    
    
