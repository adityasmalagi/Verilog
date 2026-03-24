`timescale 1ns / 1ps

module MOD_4(
 input clk,rst,enb,output reg[1:0]count    
    );
    always@(posedge clk)begin
        if(rst)
            begin
            count <= 0;
            end
            else if(enb)
             count = count + 1'b1;
             else
             count <= count;
             
        end
endmodule
