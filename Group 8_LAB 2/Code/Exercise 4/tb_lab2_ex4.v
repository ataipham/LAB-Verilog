`timescale 1ns / 1ps

module tb_lab2_ex4;  
    reg [3:0] bcd;  
    reg mode,select;  
    wire [5:0] led;  
   
   lab2_ex4 UUT(bcd,mode,select,led);  
    initial $monitor("%time: led=%b",$time,led);  
    initial begin  
    bcd=4'b0100; mode=1'b0; select=1'b0;  
    #10  
    bcd=4'b0100; mode=1'b1; select=1'b1;  
    #10  
    bcd=4'b0001; mode=1'b1; select=1'b0;  
    #10  
    bcd=4'b1101; mode=1'b0; select=1'b0;  
    end  
endmodule 