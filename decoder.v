`timescale 1ns / 1ps

module decoder(
  input [1:0]din,output reg[3:0]y
    );
    
    always@(*)
        begin
           if(din == 2'b00)
              y = 4'b0001;
           else if(din == 2'b01)
              y = 4'b0010;
           else if(din == 2'b10)
              y = 4'b0100;
           else if(din == 2'b11)
              y = 4'b1000;
         end
endmodule
