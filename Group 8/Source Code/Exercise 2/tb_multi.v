`timescale 1ns / 1ps

module tb_multi;

reg pin1,pin2,psel;
integer i;
wire pout;
mul_2_to_1 testbench(pin1,pin2,psel,pout);
initial begin

    for(i=0;i<8;i=i+1)
    begin
    {pin1,pin2,psel}=i;
     #10;
   end
$finish;
end
endmodule
