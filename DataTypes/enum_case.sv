module enumcase;
  typedef enum {idle,start,stop} state;
  state position;
  initial begin
    position=idle;
    case(position)
      idle: begin
        $display("System IDLE");
      end
      start: begin
        $display("System Started");
      end
      stop: begin
        $display("System Stopped");
      end
    endcase
  end
endmodule
