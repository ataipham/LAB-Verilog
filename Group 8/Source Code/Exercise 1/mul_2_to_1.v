`timescale 1ns / 1ps

module mul_2_to_1(input in1,in2,sel,output out );
wire decoder1, decoder2;

decoder1_to_2 M1(sel,decoder1,decoder2);

wire AND1, AND2;

and (AND1,in1,decoder1),
     (AND2,in2,decoder2);
     
or(out,AND1,AND2);
endmodule
