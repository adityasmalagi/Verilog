`timescale 1ns / 1ps


module Mod_5_counter(
    input clk,rst,enb,output reg [2:0]count
    );
    
    always@(posedge clk)
        begin
            if(rst)
                count <= 0;
             else if(count < 4 && enb == 1)
                count <= count + 1'b1;
              else if(enb == 1'b1 && count >= 4)
              count <= 1'b0;
              else if(enb == 0)
                count <= count;
                
           end
endmodule
