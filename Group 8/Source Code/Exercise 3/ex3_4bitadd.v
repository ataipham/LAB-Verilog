`timescale 1ns / 1ps



module ex3_4bitadd(A,B,S,C0,C4 );
input [3:0]A;
input [3:0]B;
input C0;
output C4;
output [4:0]S;
wire [3:1]C;
ex3_fulladd ADD1(A[0],B[0],C0,C[1],S[0]);
ex3_fulladd ADD2(A[1],B[1],C[1],C[2],S[1]);
ex3_fulladd ADD3(A[2],B[2],C[2],C[3],S[2]);
ex3_fulladd ADD4(A[3],B[3],C[3],C4,S[3]);
endmodule
