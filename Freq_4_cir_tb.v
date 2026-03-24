`timescale 1ns / 1ps

module Freq_4_cir_tb();

reg clk,rst,enb;
wire [1:0]count;
wire f_4;

Freq_4_cir dut(clk,rst,enb,f_4);

initial
    begin
    {clk,rst,enb} = 0;
    end
    
always #5 clk = ~clk;

initial
    begin
       rst = 1;
       #10;
       rst = 0;
       
       enb = 1;
       #100;
       enb = 0;
       end
endmodule
