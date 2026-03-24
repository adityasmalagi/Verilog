`timescale 1ns / 1ps


module Monitor();

reg a;
initial
    begin
    //case --1
    //a = 1;
    //$monitor("the value of a is %d",a);
    
    //case --2
    //$monitor("the value of a is %d",a);
    //a = 1;
    
    //case--3
    a <= 1;
    $monitor("the value of a is %d",a);
    
  
    end
endmodule
