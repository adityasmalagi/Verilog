`timescale 1ns / 1ps

module d_latch_tb();

reg rst,din,enb;
wire q,qbar;

d_latch dut(rst,din,enb,q,qbar);

initial 
    begin
    {rst,din,enb} = 0;
    end
    always #5 enb = ~enb;
    
    initial
        begin
        rst = 1;
        #15
        rst = 0;
        #5
        din = 1;
        #10
        din = 0;
        end
endmodule
