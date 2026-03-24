`timescale 1ns / 1ps

module Freq_2_cir(input clk,rst,output reg f_2);
  
    always@(posedge clk)begin
    if(rst)
        f_2 <= 0;
      else 
         f_2 <= ~f_2;
    end
endmodule
