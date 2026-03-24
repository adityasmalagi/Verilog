`timescale 1ns / 1ps

module piso(
    input clk,rst,load,input [3:0]pin,output reg sout
    );
reg [3:0]temp;
  always@(posedge clk)
    begin
        if(rst)
            temp = 4'b0000;
            if(load)
                temp <= pin;
            else if(load == 0)
                 temp <= {1'b0,temp[3:0]};
                 sout <= temp[3];
                 end
endmodule
