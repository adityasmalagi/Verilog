`timescale 1ns / 1ps

module Four_bit_ripple(input [3:0] a_rca, b_rca,input cin_rca ,output [3:0] sum_rca,output carry_rca);

wire w1,w2,w3;
full_adder fa1(a_rca[0],b_rca[0],sum_rca[0],w1);
full_adder fa2(a_rca[1],b_rca[1],sum_rca[1],w2);
full_adder fa3(a_rca[2],b_rca[2],sum_rca[2],w3);
full_adder fa4(a_rca[3],b_rca[3],sum_rca[3],carry_rca);
endmodule
