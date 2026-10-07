module tb;
  int arr[];
  int arr1[];
  initial begin
    arr=new[10];
    arr='{64,128,32,16,2,1,256,8,1024,4};
    arr1=new[arr.size()](arr);
    $display(" before sorting using array methods %p",arr);
    //usign array methods
    arr.sort();
    $display(" After sorting using array methods %p",arr);
    //w/o using array methods
    $display("Before sorting of arr1 w/o array methods %p",arr1);
    for(int i=0;i<arr1.size()-1;i++) begin
      for(int j=0;j<arr1.size()-1-i;j++) begin
        if(arr1[j]>arr1[j+1]) begin
          arr1[j]=arr1[j]+arr1[j+1];
          arr1[j+1]=arr1[j]-arr1[j+1];
          arr1[j]=arr1[j]-arr1[j+1];
        end
      end
    end
    $display("After sorting of arr2 w.o array methods %p",arr1);
  end
endmodule



-----------------------------------------------------------------------------------
OUTPUT:
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
before sorting using array methods '{64, 128, 32, 16, 2, 1, 256, 8, 1024, 4}
After sorting using array methods '{1, 2, 4, 8, 16, 32, 64, 128, 256, 1024}
Before sorting of arr1 w/o array methods '{64, 128, 32, 16, 2, 1, 256, 8, 1024, 4}
After sorting of arr2 w.o array methods '{1, 2, 4, 8, 16, 32, 64, 128, 256, 1024}
xmsim: *W,RNQUIE: Simulation is complete.
-------------------------------------------------------------------------------------
