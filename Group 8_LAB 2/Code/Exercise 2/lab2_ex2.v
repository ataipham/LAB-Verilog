/*module lab2_ex2 (
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
        counter <= 0; 
    end
end

always@(led,toggle)
begin
    led <= toggle;
end

endmodule */

module lab2_ex2(
  input clk125mhz, 
  output clk1hz);
  
reg [25:0] counter=0;

always @(posedge clk125mhz )
        if(counter == 1_250_000 -1)
        counter <= 0;
        else counter <= counter +1;

assign clk1hz = counter >=625_000;

endmodule