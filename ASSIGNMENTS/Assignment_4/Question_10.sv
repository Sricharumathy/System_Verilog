module tb;
  string str1;
  string str2;
  initial begin
    str1="racecar";
    $display("String 1 = %s",str1);
    for(int i=str1.len()-1;i>=0;i--) begin
      str2={str2,$sformatf("%c",str1[i])};
    end
    $display("String 2 = %s",str2);
    if(str1==str2) begin
      $display("PALINDROME");
    end
    else 
      $display("NOT PALINDROME");
  end
endmodule


OUTPUT
--------------------------------------------------------------------------------
xcelium> source /xcelium25.03/tools/xcelium/files/xmsimrc
xcelium> run
String 1 = racecar
String 2 = racecar
PALINDROME
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
