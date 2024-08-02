`timescale 1ns / 1ps

module Ex4_2bitcompara(a,b,a_gt_b,a_eq_b,a_lt_b);
input [1:0] a,b;
output a_gt_b, a_eq_b, a_lt_b;
//wire a1,a2,a3,a4,a5;
and  A1(a1,~a[1],b[1]),
     A2(a2,~a[1],~a[0],b[0]),
     A3(a3,~a[0],b[1],b[0]);
xnor A4(a4,b[1],a[1]),

     A5(a5,b[0],a[0]);
or  B1(a_lt_b,a1,a2,a3);
and B2(a_eq_b,a4,a5);
nor OUT(a_gt_b,a_lt_b,a_eq_b);

endmodule

