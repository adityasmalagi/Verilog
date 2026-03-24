`timescale 1ns / 1ps

module Freq_2_cir_tb();

reg clk,rst;
wire f_2;

Freq_2_cir dut(clk,rst,f_2);
initial
    begin
    {clk,rst} = 0;
    end
   
   always #5 clk = ~clk;
   initial
      begin
       rst = 1'b1;
       #10
       rst = 1'b0;
 
      end
endmodule
