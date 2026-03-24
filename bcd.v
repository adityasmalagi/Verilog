`timescale 1ns / 1ps

module bcd(input [3:0] a_bcd,b_bcd,input cin_bcd,output [3:0] sum_bcd,output carry_bcd);

reg [4:0] temp;
always@(*)
    begin
        temp = a_bcd + b_bcd +cin;
        
        if(temp > 'd9)
            temp = 4'b0110 + temp;
        else
            temp = temp;
    end
        
        assign sum_bcd = temp [3:0];
        assign carry_bcd = temp[4];
endmodule
