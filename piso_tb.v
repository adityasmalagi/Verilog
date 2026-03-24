`timescale 1ns / 1ps


module piso_tb();

reg clk,rst,load;
reg [3:0]pin;
wire sout;



piso dut(clk,rst,load,pin,sout);

initial
    begin
    {clk,rst,load,pin} = 0;
    end
    
    always #5 clk = ~clk;
    
  initial
    begin
     rst = 1;
     #10;
     rst = 0;
     #10;
     pin = 4'b1101;
     load = 1'b1;
     #20;
     load = 1'b0;
  end
endmodule
