`timescale 1ns / 1ps

module lab3_ex2_b(
input btn, clk, en,
output btn_edge,
output reg [3:0] counter
    );
    lab3_ex2 A1(.in(btn),.clk(clk),.out(btn_edge));
    
    always@(posedge clk)
    begin
        if(btn_edge) counter <= counter + 1;
     end
     initial begin
     counter <= 0;
     end
    
endmodule
