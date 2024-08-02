`timescale 1ns / 1ps

module lab3_ex3(
    input clk,
    input [3:0] button,
    output reg [3:0] led
    );
    
    reg [1:0] currentState, nextState;
    reg [3:0] nextled;
    initial begin
    currentState = 2'b00;
    led = 4'b0011;
    end
  
    //state transition logic
    always@(posedge clk) begin
        currentState <= nextState;
        led <= nextled;
        end
       /*
        RESET = 2'b00
        ShiftLEFT = 2'b01
        ShiftRIGHT = 2'b10
        PAUSE = 2'b11
        */
    always@* begin
    nextState = currentState;
    nextled = led;
        case(currentState)
            2'b00: begin
                if(button[0]) nextled <= 4'b0011;
                else if(button[1]) nextState <= 2'b01; // SHIFTLEFT
                else if(button[2]) nextState <= 2'b10;
                else nextState <= currentState;
            end
            
            2'b01: begin
                if(button[0]) nextled <= 4'b0011;
                else if(button[1]) nextled <= {led[2:0], led[3]};
                else if(button[3]) nextState <= 2'b11;
                else nextState <= 2'b10;
            end
            2'b10: begin
                if(button[0]) nextled <= 4'b0011;
                else if(button[1]) nextState <= 2'b01;
                else if(button[2]) nextled <= {led[0], led[3:1]};
                else nextState <= currentState;
            end
            2'b11: begin
                if(button[0]) nextled <= 4'b0011;
                else if(button[1]) nextState <= 2'b01;
                else if(button[2]) nextState <= 2'b10;
                else nextState <= currentState;
            end
        
        endcase
      end
 
endmodule
