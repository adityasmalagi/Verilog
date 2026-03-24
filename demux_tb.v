`timescale 1ns / 1ps

module demux_tb();

reg s,in;
wire [1:0]y;
integer i;

demux2_1 dut(s,in,y);

initial 
    begin
    {s,in} = 0;
    end
 initial
    begin
    for(i = 0;i<4;i= i+1)
    begin
    #1;
    {s,in} = i;
    end
    end
endmodule
