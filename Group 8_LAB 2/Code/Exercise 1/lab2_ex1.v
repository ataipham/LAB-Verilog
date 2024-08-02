`timescale 1ns / 1ps

module lab2_ex1(input [3:0] in, output[3:0] out );

assign out[0] = ~^in;
assign out[1] = ((in[3:0] & (in[3:0] - 1)) == 0) && (in[3:0] != 0);
assign out[2] = ~|in;
assign out[3] = &in;

endmodule
