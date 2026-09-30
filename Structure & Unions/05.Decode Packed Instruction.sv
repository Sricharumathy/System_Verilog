//Given typedef struct packed { bit [2:0] opcode; bit [4:0] operand; } instr_t;, what would opcode and operand show if the whole struct were assigned 8'hA6?
typedef struct packed{
  bit [2:0] opcode;
  bit [4:0] operand;
}instr_t;
module tb;
  instr_t val;
  initial begin
    val=8'hA6;
    $display("%p--%0b",val.opcode,val.opcode);
    $display("%p--%0b",val.operand,val.operand);
    $display("%p--%0b",val,val);
  end
endmodule
