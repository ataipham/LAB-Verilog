`timescale 1ns / 1ps
module tb_lab3_ex2_b;
reg btn;
reg clk;
wire [3:0] out;
wire btn_edge;

    lab3_ex2_b uut(.clk(clk),.btn(btn),.counter(out));
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end
    
    initial begin
        btn = 1'b0;
        #13 btn = 1'b1;
        #50 btn =1'b0;
        #20 btn =1'b1;
        #20 btn =1'b0;
        #20 btn =1'b1;
        #50 $finish;
    end
endmodule
