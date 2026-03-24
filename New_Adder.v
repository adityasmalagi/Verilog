`timescale 1ns / 1ps

module New_Adder(
    input [3:0] a,b,
    input ck,
    output [3:0] Sum,
    output Cout
    );
    Adderrr Add_4bit (
  .A(a),          // input wire [3 : 0] A
  .B(b),          // input wire [3 : 0] B
  .CLK(ck),      // input wire CLK
  .C_OUT(Cout),  // output wire C_OUT
  .S(Sum)          // output wire [3 : 0] S
);
endmodule
