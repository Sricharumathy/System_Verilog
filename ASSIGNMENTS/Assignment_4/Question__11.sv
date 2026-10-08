module tb;
  int box[];
  initial begin
    box=new[10];
    for(int i=0;i<10;i++) begin
      box[i]=$urandom_range(1,100);
    end
    $display("Original Dynamic Array: %p",box);
    box.sort();
    $display("After Sorting the Array:%p",box);
  end
endmodule

OUTPUT
--------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
Original Dynamic Array: '{56, 56, 66, 10, 100, 37, 29, 2, 8, 95}
After Sorting the Array:'{2, 8, 10, 29, 37, 56, 56, 66, 95, 100}
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
