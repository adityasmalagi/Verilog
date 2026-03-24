`timescale 1ns / 1ps

module mux2_to_1_tb(
    );
    reg [1:0] i;
    reg s;
    wire y;
    integer m;
    
    mux2_to_1 dut(i,s,y);
    initial 
        begin
        {i,s} = 0;
        end
        
    initial
        begin
        //s = 0;
       // i = 2'b00;
        
       // #1;
        
      //  s = 0;
       // i = 2'b01;
        
        for(m=0;m<0;m= m+1)
        begin
        #1;
        {s,i}= m;
        end
        $monitor("the value of the y is %d",y);
        end
endmodule
