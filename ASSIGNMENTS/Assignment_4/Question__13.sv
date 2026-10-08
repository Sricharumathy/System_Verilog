module tb;
  int num1;
  int num2;
  initial begin
    num1=int'(10.0-1.2);
    $display("num1 = %p",num1);
    num2=int'(5/3);
    $display("num2 = %p",num2);
  end
endmodule

OUTPUT
-------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
num1 = 9
num2 = 1
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
