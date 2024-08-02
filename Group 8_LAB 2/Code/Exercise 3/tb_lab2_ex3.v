`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module tb_lab2_ex3;
reg [3:0] bin_in;
wire [6:0] led_out;
reg en;

lab2_ex3 uut (.bin_in(bin_in), .en(en), .led_out(led_out));

initial begin
en = 1'b0;
#10 en = 1'b1;
#10 bin_in <= 4'd1;
#10 bin_in <= 4'd2;
#10 bin_in <= 4'd3;
#10 bin_in <= 4'd4;
#10 bin_in <= 4'd5;
#10 bin_in <= 4'd6;
#10 bin_in <= 4'd7;
#10 bin_in <= 4'd8;
#10 bin_in <= 4'd9;
    
#10 en = 4'd0;
#10 bin_in <= 4'd1;
#20;
$finish;
end
endmodule
