`timescale 1ns / 1ps
module tb_4bitcompa;

reg[3:0]pA,pB;
wire pE,pG,pL;
integer i,j;
ex4_compara4bit uut(pA,pB,pE,pG,pL);
initial
    begin
        for(i=0;i<16;i=i+1)
        begin
            for(j=0;j<16;j=j+1)
                begin
                pA=i;
                pB=j;
                #10;
                end
         end 
         $finish;
    end
endmodule
