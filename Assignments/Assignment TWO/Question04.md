# Question04
## What happens when an enum variable is assigned with the last valid value and the next method is used to do the next assignment?<br>
When an enum variable is assigned its last valid value and the .next() method is called, it wraps around to the first enum value.<br>
Example:
```
typedef enum {IDLE, START, RUN, STOP} state_t;
state_t state;

initial begin
  state = STOP;
  state = state.next();
  $display("%s", state.name());
end
```
Output: IDLE<br>
Remember the sequence: IDLE → START → RUN → STOP → IDLE → ...
