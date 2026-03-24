`timescale 1ns / 1ps

module t_latch(
    input rst,enb,t,output reg q,qbar
    );
    
    always@(enb)
        if(enb)
            if(rst)
                begin
                q <= 1'b0;
                qbar <= 1'b1;
                end
             else if(t == 0)
                begin
                q <= q;
                qbar <= qbar;
                end
             else if(t == 1)begin
             q <= ~q;
             q <= ~qbar;
             end
                
endmodule
