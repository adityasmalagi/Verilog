`timescale 1ns / 1ps

module counter_f_3(
 input clk,rst,enb,output f_3
    );
reg [1:0] count;   
 always@(posedge clk)
    begin
        if(rst)
            count <= 0;
        else if(count < 2 && enb == 1)
             count <= count + 1'b1;
             
        else if(enb == 1'b1 && count >= 2)
        count <= 1'b0;
        
        else if(enb == 1'b0)
           count <= count;
        end
        
      assign f_3 = count[1];
endmodule
