module enumfsm;
  typedef enum {IDLE,START,STOP} FSM;
  FSM res;
  initial begin
    res=IDLE;
    $display("%s",res.name());
    res=START;
    $display("%s",res.name());
    res=STOP;
    $display("%s",res.name());
    end
endmodule
    
