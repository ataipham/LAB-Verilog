//`timescale 1ns / 1ps

module decoder1_to_2(in,out1,out2);
input in;
output out1,out2;
not (out1,in);
buf (out2,in);
endmodule 



