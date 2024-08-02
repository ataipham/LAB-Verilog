`timescale 1ns / 1ps

module tb_lab3_ex2;
    reg clk, in;
    wire out;
    lab3_ex2 uut(.clk(clk), .in(in), .out(out));
    
    initial begin
    clk = 0;
     forever #100 clk = ~clk;
    end
    
    initial begin
    in = 0;
        #400 in = ~in; 
        #200 in = 0;
    end

endmodule
