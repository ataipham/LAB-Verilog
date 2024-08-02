`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module lab3_ex2(
    input clk,
    input in,
    output out
    );
    reg Q1, Q2;
    always@(posedge clk) begin
        Q1 <= in;
        Q2 <= Q1;
    end
    assign out = Q1 & ~Q2;
endmodule
