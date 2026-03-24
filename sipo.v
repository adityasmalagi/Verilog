`timescale 1ns / 1ps

module sipo(
    input rst,clk,enb,sin,output reg pout
    );
    reg [4:0]temp;
    always@(posedge clk)
     if(rst)
        temp = 4'b0000;
        else if(enb == 0)
            begin
            temp <= temp << 1'b1;
            temp[3] <= sin;
            end
            
        else if(enb == 1)
            pout <= temp;
endmodule
