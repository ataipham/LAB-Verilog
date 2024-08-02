`timescale 1ns / 1ps

module ex3_fulladd(a,b,c_in,c_out,sum );
input a,b,c_in;
output c_out,sum;
wire S1,C1,C2;
ex3_halfadd ADD1(a,b,S1,C1);
ex3_halfadd ADD2(S1,c_in,sum,C2);
or (c_out,C2,C1);
endmodule
