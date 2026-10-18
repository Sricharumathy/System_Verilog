module dyna_assotb;
  string arr [ ][int];
  initial begin
    arr=new[2];
    arr[0]='{6:"Avni",16:"Banu",26:"Charu"};
    arr[1]='{7:"Arun",17:"Bharath",37:"Chethan"};
    $display("%p",arr);
    foreach(arr[i]) begin
      foreach(arr[i][j]) begin
        $display("arr[%0d][%0d]--->%s",i,j,arr[i][j]);
      end
    end
  end
endmodule
    
