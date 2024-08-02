`timescale 1ns / 1ps

module ex4_compara4bit(A,B,E,G,L );
input [3:0]A,B;
output E,G,L;
wire E1,G1,L1,G2,E2,L2;

Ex4_2bitcompara compa1( A[1:0],B[1:0],G1,E1,L1 );
Ex4_2bitcompara compa2(A[3:2],B[3:2],G2,E2,L2);

and equal   (E,E1,E2);
nand (great,E2,G1),
     (G,great,~G2),
     (less,E2,L1),
     (L,less,~L2);
endmodule
