`timescale 1ns / 1ps
module tb_lab3_ex3;
    reg [3:0] btn;
    reg clk;
    wire [3:0] led;
   
   lab3_ex3 utt (.clk(clk), .button(btn), .led(led));
   
   initial begin
    clk =0;
    forever #5 clk = ~clk;
   end
   
   initial begin
    btn = 4'b0000;
    // Release all buttons
        #30 btn = 4'b0010; // Activate circular shift right
        #100 btn = 4'b0100; // Switch to circular shift left
        #100 btn = 4'b0010; // Switch back to circular shift right
        #100 btn = 4'b0100; // Switch to circular shift left again
        #100 btn = 4'b1000; // Pause shifting
        #100 btn = 4'b0000; // Release all buttons, should remain paused
        #100 btn = 4'b0010; // Attempt to resume with shift right
        #100 btn = 4'b1000; // Pause again
        #100 btn = 4'b0001; // Reset to default pattern
        #20 btn = 4'b0000; // Release all buttons to observe reset state
        #100 $finish;
   
   end
initial begin
       $monitor("At time %t, btn = %b, led = %b", $time, btn, led);
   end

endmodule
