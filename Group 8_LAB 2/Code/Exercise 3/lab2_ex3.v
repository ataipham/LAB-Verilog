`timescale 1ns / 1ps

module lab2_ex3 (en, bin_in, led_out);

input [3:0] bin_in;
input en;
output reg [6:0] led_out;
always @*
begin
if(en==1'b0) led_out <= 7'd0;
else
    case(bin_in)
        4'd0: led_out <= 7'd0;
        4'd1: led_out <= 7'b0110000;
        4'd2: led_out <= 7'b1101101;
        4'd3: led_out <= 7'b1111001;
        4'd4: led_out <= 7'b0110011;
        4'd5: led_out <= 7'b1011011;
        4'd6: led_out <= 7'b1011111;
        4'd7: led_out <= 7'b1110000;
        4'd8: led_out <= 7'b1111111;
        4'd9: led_out <= 7'b1111011;
    endcase
end

endmodule
