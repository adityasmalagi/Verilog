`timescale 1ns / 1ps

module bcd_tb();
reg [3:0] a_tb,b_tb;
reg cin_tb;
wire [3:0] sum_tb;
wire carry_tb;

bcd dut(a_tb,b_tb,cin_tb,sum_tb,carry_tb);

initial
    begin
    {a_tb,b_tb,cin_tb} = 0;
    end
    
initial 
    begin
    a_tb = 4'b0110;
    b_tb = 4'b0010;
    cin_tb = 1'b1;
    $monitor("the value of the sum %d and value of carry %d", sum_tb,carry_tb);
    end    
endmodule
