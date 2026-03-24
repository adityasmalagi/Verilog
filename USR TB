`timescale 1ns / 1ps

module usr_tb();

reg clk,rst,sin,load,shift;
reg [3:0]pin;
reg [1:0]mode;
wire sout;
wire [3:0]pout;

usr dut(clk,rst,sin,load,shift,mode,pin,sout,pout);

initial
    begin
    {clk,rst,sin,load,shift,pin,mode} = 0;
    end
    
 always #5 clk = ~clk;
 
 initial
    begin
    // siso
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    
    mode = 2'b00;
    shift = 1'b1;
    sin = 1'b1;
    #10;
    sin = 1'b0;
    #10;
    sin = 1'b1;
    #10;
    sin = 1'b1;
    #50;
    shift = 1'b0;
    #10;
    
    //sipo
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    mode = 2'b01;
    shift = 1'b1;
    sin = 1'b1;
    #10;
    sin = 1'b0;
    #10;
    sin = 1'b1;
    #10;
    sin = 1'b1;
    #50;
    shift = 1'b0;
    #10;
    
    //piso
//    rst = 1'b1;
//    #10;
//    rst = 1'b0;
//    #10;
//    mode = 2'b10;
//    load = 1'b1;
//    pin = 4'b0101;
//    #10;
//    load = 1'b0;
    
    //pipo
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    mode = 2'b11;
    load = 1'b1;
    pin = 4'b0101;
    #10;
    load = 1'b0;
  end  
endmodule
