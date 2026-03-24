`timescale 1ns / 1ps

module FA_using_HA(input a_fa, b_fa, cin_fa, output sum_fa, carry_fa);
wire w1,w2,w3;
half_adder2 ha1(.a(a_fa), .b(b_fa),.sum(w1),.carry(w2));
half_adder2 ha2(.a(w1), .b(cin_fa),.sum(sum_fa),.carry(w3));

or (carry_fa,w2,w3);
endmodule
