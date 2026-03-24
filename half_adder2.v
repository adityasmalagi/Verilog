`timescale 1ns / 1ps

module half_adder2(input a,b,output sum,carry);

xor x1(sum,a,b);
and a1(carry,a,b);

endmodule
