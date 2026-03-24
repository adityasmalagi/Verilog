`timescale 1ns / 1ps


module FA_Substrator(input a,b,output diff,borrow);
wire w1;
xor x1(diff,a,b);
not x2(w1,a);
and x3(borrow,w1,b);
endmodule
