`timescale 1ns / 1ps

module decoder_tb();

reg [1:0]din;
wire [3:0]y;

decoder dut(din,y);
initial
    begin
    {din} = 0;
    end
initial
    begin
    din = 2'b00;
    #1
    din = 2'b01;
    #1
    din = 2'b10;
    #1
    din = 2'b11;
    end
endmodule