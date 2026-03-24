`timescale 1ns / 1ps

module sipo_tb();
reg clk,rst,enb,sin;
wire [3:0]pout;

sipo dut(clk,rst,enb,sin,pout);

initial
    begin
    {clk,rst,enb,sin} = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
        begin
        rst = 0;
        #10
        rst = 1;
        
        enb = 1;
        #10
        enb = 0;
        
        #10
        sin = 1'b1;
        #10
        sin = 1'b1;
        #10
        sin = 1'b0;
        #10
        sin = 1'b0;
        #30
        
        enb = 1;
      end
endmodule
