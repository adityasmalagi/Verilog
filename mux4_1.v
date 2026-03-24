`timescale 1ns / 1ps

module mux4_1(
    input[1:0]sel,input [3:0] i, output reg y
    );
    
    always@(*)
//        begin
//        if(sel == 2'b00)
//            y = i[0];
//        else if(sel == 2'b01)
//            y = i[1];
//        else if(sel == 2'b10)
//            y = i[2];
//        else
//            y = i[3]; 

     case(sel)
        2'b00 : y = i[0];
        2'b01 : y = i[1];
        2'b10 : y = i[2];
        2'b11 : y = i[3];
        endcase
endmodule
