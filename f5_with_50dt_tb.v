`timescale 1ns / 1ps

module f5_with_50dt_tb();

reg clk,rst,enb;
wire f_5;

f5_with_50dt dut(clk,rst,enb,f_5);

initial
    begin
    {clk,rst,enb} = 0;
    end
    
 always #5 clk = ~clk;
 
 initial
    begin
        rst = 1'b1;
        #10
        rst = 1'b0;
        #10
        enb = 1'b1;
        #200
        enb = 1'b0;
        
     end
        
endmodule
