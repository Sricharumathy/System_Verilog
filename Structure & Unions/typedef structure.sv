module tb;
  typedef struct{
    int empid;
    string name;
    byte dptcode;
  }st_details;
  st_details emp1,emp2,emp3,emp4;
  initial begin
     emp1='{2122255,"Arun",12};
     emp2='{2122279,"Banu",15};
     emp3='{2122303,"Charu",24};
    $display("Employee 1: %p", emp1);
    $display("Employee 2: %p", emp2);
    $display("Employee 3: %p", emp3);
    $display("Employee 4: %p", emp4);
    emp4=emp2;
    $display("Employee 4: %p", emp4);
    emp4.id=2122300;
    $display("Employee 4: %p", emp4);  
  end
endmodule
