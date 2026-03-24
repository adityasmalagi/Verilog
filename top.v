`timescale 1ns / 1ps

module top();

wire [1:0]w;
wire [1:0]x;
wire [3:0] in_mux1;
wire [3:0] in_mux2;
wire [3:0] in_mux3;
wire out_mux1;
wire out_mux2;
wire out_mux3;

assign in_mux1[0] = 0;
assign in_mux1[1] = 1;
assign in_mux1[2] = 1;
assign in_mux1[3] = 0;

assign in_mux2[0] = 0;
assign in_mux2[1] = 1;
assign in_mux2[2] = 0;
assign in_mux2[3] = 0;

assign in_mux3[0] = out_mux1;
assign in_mux3[1] = 0;
assign in_mux3[2] = out_mux2;
assign in_mux3[3] = 1;

four_1_mux mux1(w,in_mux1,out_mux1);
four_1_mux mux2(w,in_mux2,out_mux2);
four_1_mux mux3(x,in_mux3,out_mux3);

endmodule
