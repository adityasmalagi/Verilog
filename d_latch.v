`timescale 1ns / 1ps

module d_latch(
    input enb,rst,din,output reg q,qbar
    );
    
    always@(enb)
        begin
            if(!enb)
                if(rst)
                    begin
                    q <= 1'b0;
                    qbar <= 1'b1;
                    end
                 else begin
                 q <= din;
                 qbar <= ~din;
                 end
    end
endmodule
