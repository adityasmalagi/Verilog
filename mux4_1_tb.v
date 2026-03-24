`timescale 1ns / 1ps

module mux4_1_tb();

reg [3:0]in;
reg s;
wire y;
integer i;

mux4_1 dut(in,s,y);

initial 
    begin
    {in,s} = 0;
    end
initial
    begin
//    s= 2'b00;
//    in= 2'b00;
    
//    #1
//    s= 2'b00;
//    in = 2'b01;
    
//    #1
    
//    s= 2'b00;
//    in = 2'b10;

   for(i = 0;i < 64;i =i+1)begin
   #1
   {s,in} = i;
   end
    end
endmodule
