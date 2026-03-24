`timescale 1ns / 1ps

module sr_latch(
    input enb,rst,s,r,output reg q,qbar);
always@(enb)
    begin
    if(enb)begin
    
    //reset logic
    //synchronous reset 
    if(rst)begin
        q <= 1'b0;
        qbar <= 1'b1;
    end
    
    //hold condition
    else if(s == 0 && r == 0)
        begin
        q <= q;
        qbar <= qbar;
        end
        
      //reset condition  
    else if(s == 0 && r == 1)
        begin
        q <= 1'b0;
        qbar <= 1'b1;
        end
        
        //set condition
        else if(s == 1 && r == 0)
        begin
        q <= 1'b1;
        qbar <= 1'b0;
        end
        
        //invalid condition
        else if(s == 1 && r == 1)
        begin
        q <= 1'bx;
        qbar <= 1'bx;
        end
        end
    end
endmodule
