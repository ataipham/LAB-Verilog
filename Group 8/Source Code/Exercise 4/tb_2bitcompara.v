`timescale 1ns / 1ps
module tb_2bitcompara;
reg [1:0] A,B;
wire A_LT_B, A_GT_B, A_EQ_B;
integer i;
Ex4_2bitcompara UUT(A, B, A_GT_B, A_EQ_B, A_LT_B);

initial 
    begin
        for(i=0; i<16; i=i+1)
          begin
          {A,B}=i;
            #10;
          end
         $finish;
    end
endmodule 



