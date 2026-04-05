`timescale 1ns / 1ps

module RAM_8x8(
 input clk, rst, wr_enb,
 input [2:0] wr_addr,
 input [7:0] data_in,
 input rd_enb,
 input [2:0] rd_addr,
 output reg [7:0] data_out
);

reg [7:0] mem[7:0];
integer i;

always @(posedge clk or posedge rst)
begin
    if (rst) begin
        for(i = 0; i < 8; i = i + 1)
            mem[i] <= 0;
    end
    else if (wr_enb)
            mem[wr_addr] <= data_in;

        else if (rd_enb)
            data_out <= mem[rd_addr];
end

endmodule