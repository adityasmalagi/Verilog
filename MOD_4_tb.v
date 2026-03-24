`timescale 1ns / 1ps

module MOD_4_tb();
reg clk,rst,enb;
wire [1:0]count;

MOD_4 dut(clk,rst,enb,count);

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
    #50;
    enb = 0;
    end
endmodule
