`timescale 1ns / 1ps

module full_addar(input a,b,cin,output sum, carry);

wire w1,w2,w3;

xor x1(sum,a,b,cin);
and a1(w1,a,b);
and a2(w2,b,cin);
and a3(W3,a,cin);

or o1(carry,w1,w2,w3);

endmodule
