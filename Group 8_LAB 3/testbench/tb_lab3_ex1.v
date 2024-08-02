`timescale 1ns / 1ps

module tb_lab3_ex1;

    reg clk125mhz;
    wire red, blue;
    
    lab3_ex1 uut(.clk(clk125mhz) ,.out_r(red), .out_b(blue));
    
    initial
    begin
        clk125mhz = 0;
        forever #400 clk125mhz = ~clk125mhz;
    end
endmodule
