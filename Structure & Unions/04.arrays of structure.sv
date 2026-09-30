typedef struct {
  int data;
  string name;
}structure;
module tb;
  structure fixedarray[8];
  structure dynamicarray[];
  structure associatearray[int];
  
  initial begin
    $display("---FixedArray-----");
    for(int i=0;i<8;i++) begin
      fixedarray[i].data=i*8;
      fixedarray[i].name=$sformatf("fixed_%0d",i);
      $display("fixedarray[%0d]--->data=%0d,name=%0s",i,fixedarray[i].data,fixedarray[i].name);
    end
    $display("---DynamicArray-----");
    dynamicarray=new[5];
    dynamicarray[0].data=11;
    dynamicarray[0].name="Aa";
    dynamicarray[1].data=22;
    dynamicarray[1].name="Ba";
    dynamicarray[2].data=33;
    dynamicarray[2].name="Ca";
    dynamicarray[3].data=44;
    dynamicarray[3].name="Da";
    dynamicarray[4].data=55;
    dynamicarray[4].name="Ea";
    for (int j = 0; j < dynamicarray.size(); j++) begin
      $display("dynamic_array[%0d]: data=%0d, name=%s", j, dynamicarray[j].data, dynamicarray[j].name);
    end
    $display("---AssociativeArray-----");
    associatearray[5].data = 99;
    associatearray[5].name = "Abc";
    associatearray[15].data = 22;
    associatearray[15].name = "Efg";
    associatearray[25].data = 56;
    associatearray[25].name = "Hij";
    associatearray[35].data = 77;
    associatearray[35].name = "klm";
    foreach(associatearray[z]) begin
      $display("associatearray[%0d]: data:%0d, name=%s",z,associatearray[z].data,associatearray[z].name);
    end
  end
endmodule
  
