`timescale 1ns / 1ps

module Mod_5_counter_tb();

reg rst,clk,enb;
wire [2:0]count;

Mod_5_counter dut(rst,clk,enb,count);

initial
    begin
    {clk,rst,enb}= 0;
    end
    
always #5 clk = ~clk;

initial
    begin
    rst = 1'b1;
    #10
    rst = 1'b0;
    #10
    enb = 1'b1;
    #100
    enb = 1'b0;
   end
endmodule
