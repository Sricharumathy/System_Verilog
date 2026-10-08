//An enumerated type (enum) is a user-defined data type that consists of a fixed set of named constant values
//It improves code readability, type safety, and FSM/state representation.

typedef enum logic [3:0]{
    ADD=4'd2,
    SUB=4'd3,
    JE=4'd10,
    JNE=4'd11,
    LD=4'd12,
    ST=4'd13
  }opcode_t;
module tb;
  opcode_t opcode;
  initial begin
    opcode=ADD;
    $display("ADD=%0d",opcode);
    opcode=SUB;
    $display("SUB=%0d",opcode);
    opcode=ST;
    $display("ST=%0d",opcode);
    
  end
endmodule


OUTPUT
-----------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
ADD=2
SUB=3
ST=13
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
