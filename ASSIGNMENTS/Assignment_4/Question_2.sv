module tb;
  typedef struct{
    bit [2:0] opcode;
    bit [3:0] addr;
    byte data;
  }Instr_t;
  
  Instr_t arr[5];
  initial begin
    arr[0]='{001,4'hC,8'h88};
    arr[1]='{101,4'hA,8'h92};
    $display("%p",arr);
    $display("Opcode of array[0]: %0d",arr[0].opcode);
    $display("Addr of array[1]: %0d",arr[1].addr);
    $display("Data of array[0]: %0b",arr[0].data);
    $display("Addr of array[2]: %0d",arr[2].addr);
  end
endmodule

OUTPUT
------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
'{'{opcode:'h1, addr:'hc, data:'h88}, '{opcode:'h5, addr:'ha, data:'h92}, '{opcode:'h0, addr:'h0, data:'h0}, '{opcode:'h0, addr:'h0, data:'h0}, '{opcode:'h0, addr:'h0, data:'h0}}
Opcode of array[0]: 1
Addr of array[1]: 10
Data of array[0]: 10001000
Addr of array[2]: 0
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
