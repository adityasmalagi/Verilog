`timescale 1ns / 1ps

module Multi_freq_tb();

reg clk,rst,enb;
reg [1:0]mode;
wire f_2;
wire f_4;
wire f_8;
wire f_16;

Multi_freq_bar dut(clk,rst,enb,mode,f_2,f_4,f_8,f_16);

initial
    begin
    {clk,rst,enb,mode} = 0;
    end

always #5 clk = ~clk;

initial
    begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b00;
    #100
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b01;
    #100
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b10;
    #100
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b11;
    #100
    enb = 0;
    end
endmodule
