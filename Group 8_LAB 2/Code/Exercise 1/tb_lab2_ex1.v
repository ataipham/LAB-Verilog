`timescale 1ns / 1ps

module tb_lab2_ex1;
reg [3:0] pin;
wire [3:0] pout;
integer i;
lab2_ex1 test(.in(pin), .out(pout));

initial 
begin
    for(i=0;i<15;i=i+1)
        begin
            pin=i;
            #10;
        end
        $finish;
end

endmodule
