`timescale 1ns / 1ps

module ex3_halfadd( a,b,sum, carry);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule