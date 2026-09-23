module channelbus;
  bit [1:0][7:0] channel;
  initial begin
    channel=16'h4271;
    $display("Total Channel Data:%b",channel);
    $display("Total Channer Data:%0h",channel);
    //print each channel
    $display("Channel 0 (binary):%b",channel[0]);
    $display("Channel 0 (hexa):%0h",channel[0]);
    $display("Channel 1 (binary):%b",channel[1]);
    $display("Channel 1 (hexa):%0h",channel[1]);
    //print 3rd bit of channel0;
    $display("Channel 0 bit 3:%b",channel[0][3]);    
  end
endmodule
