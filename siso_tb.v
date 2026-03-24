`timescale 1ns / 1ps

module siso_tb();

reg clk,rst,enb,sin;
wire sout;

siso dut(clk,rst,enb,sin,sout);

initial
    begin
    {clk,rst,enb,sin} = 0;
    end
    
    always #5 clk = ~ clk;
    
    initial 
        begin
        rst = 1;
        #10;
        rst = 0;
         
        enb = 0;
        #10;
        enb = 1;
       
       sin = 1'b1;
       #10;
       sin = 1'b0;
       #10;
       sin = 1'b1;
       #10;
       sin = 1'b1;
       #50;
       
       enb = 0;
       end
endmodule
