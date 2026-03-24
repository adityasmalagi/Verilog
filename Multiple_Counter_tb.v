`timescale 1ns / 1ps

module Multiple_Counter_tb();

reg clk,rst,enb;
reg [1:0]mode;
reg up_downbar;
wire mod_2_count;
wire [1:0]mod_4_count;
wire [2:0]mod_8_count;
wire[4:0]mod_16_count;

Multiple_counter dut(clk,rst,enb,mode,up_downbar,mod_2_count,mod_4_count,mod_8_count,mod_16_count);

initial
    begin
    {clk,rst,enb,mode,up_downbar} = 0;
    end

always #5 clk = ~clk;

initial
    begin
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    up_downbar = 1'b0;
    mode = 2'b00;
    #70
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b01;
    #70
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b10;
    #70
    enb = 0;
    
    rst = 1;
    #10;
    rst = 0;
    #10;
    enb = 1;
    mode = 2'b11;
    #70
    enb = 0;
    end
endmodule
