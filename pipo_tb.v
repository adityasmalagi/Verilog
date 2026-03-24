`timescale 1ns / 1ps

module pipo_tb();
reg clk,rst,load;
reg [3:0]pin;
wire [3:0]pout;

pipo dut(clk,rst,load,pin,pout);

initial
    begin
    {clk,rst,load,pin} = 0;
    end
    
 always #5 clk =~clk;

initial
    begin
    rst = 1;
    #10
    rst = 0;
    #10
    
    pin = 4'b1011;
    load = 1'b1;
    
    #30
    
    load = 1'b0;
    end
endmodule
