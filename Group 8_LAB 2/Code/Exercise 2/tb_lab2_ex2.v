module BlinkLED (
    input clk, // 125 MHz input clock
    output reg led
);

reg [26:0] counter; // Counter to divide the input clock frequency by 125 million
reg toggle;

always @(posedge clk) begin
    // Increment the counter
    counter <= counter + 1;
    
    // Toggle the output signal every 62.5 million clock cycles (0.5 seconds)
    if (counter == 62500000) begin
        toggle <= ~toggle;
        counter <= 0; // Reset the counter
    end
end

assign led = toggle;

endmodule
