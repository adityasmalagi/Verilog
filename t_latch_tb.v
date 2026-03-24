`timescale 1ns / 1ps

module t_latch_tb();

reg rst,enb,t;
wire q,qbar;

t_latch dut(rst,enb,t,q,qbar);

initial
    begin
    {rst,enb,t} = 0;
    end
  always #5 enb = ~enb;
  initial
    begin
      rst = 1;
      #10
      rst = 0;
      #10
      rst = 1;
      #10 
      rst = 0;  
    end
endmodule
