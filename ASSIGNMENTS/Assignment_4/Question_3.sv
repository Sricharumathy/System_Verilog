module tb;
  int arr[];
  initial begin
    arr=new[10];
    foreach(arr[i]) begin
      arr[i]=i*9;
    end
    $display("Array Elements:%p",arr);
    $display("Size of Array: %0d",arr.size());
    arr.shuffle();
    $display("After Shuffling the Array: %p",arr);
  end
endmodule

OUTPUT
-------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Array Elements:'{0, 9, 18, 27, 36, 45, 54, 63, 72, 81}
Size of Array: 10
After Shuffling the Array: '{36, 0, 9, 81, 63, 72, 27, 18, 54, 45}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
