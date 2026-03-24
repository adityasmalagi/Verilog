`timescale 1ns / 1ps

module FA_Substrator2(input a,b,cin,output diff,borrow);

wire w1,w2,w3,w4,w5;
xor x1(w1,a,b);
xor x2(diff, cin ,w1);
not x3(w2,w1);
and x4(w4,w2,cin);
not x5(w3,a);
and x6(w5,w3,b);
or x7(borrow,w4,w5);

endmodule
