`timescale 1ns / 1ps

module lab3_ex1(
    input clk,
    output out_r, out_b
    );
 reg [25:0] counter = 0;
 
    always@(posedge clk) begin
        if(counter == 1_250_000 - 1)  counter <=0;
        else   counter <= counter + 1;
    end
    assign out_r = (counter >= 625_000)? 0 : 1;
    assign out_b = ~out_r;
    
endmodule
