`timescale 1ns / 1ps

module lab2_ex4(bcd,mode,select,led); 
 input [3:0] bcd;  
 input mode; // sw0  
 input select; // sw1  
 output reg [5:0] led;  
  
always @(*) 
    begin  
        if(mode == 1'b0)   
            begin  
            if(select == 1'b0)  
              begin  
              case (bcd) //case statement  
                            0 : led = 6'b000000;  
                            1 : led = 6'b000001;  
                            2 : led = 6'b000010;  
                            4 : led = 6'b000100;  
                            8 : led = 6'b000111;  
                            default : led = 6'b000000;   
              endcase  
   end     
             else  
               begin  
               case (bcd) //case statement  
                            0 : led = 6'b000000;  
                            1 : led = 6'b001000;  
                            2 : led = 6'b010000;  
                            4 : led = 6'b100000;  
                            8 : led = 6'b111000;  
                            default : led = 6'b000000;   
               endcase  
              end     
            end  
        else  
          begin
 if(select == 1'b0)  
               begin  
                case (bcd) //case statement  
                           0 : led = 6'b000000;  
                           1 : led = 6'b001001;  
                           2 : led = 6'b010010;  
                           4 : led = 6'b100100;  
                           8 : led = 6'b111111;
 default : led = 6'b000000;   
                endcase  
              end     
             else  
               begin 
                case (bcd) //case statement  
                          0 : led = 6'b000000;  
                          1 : led = 6'b011011;   
                          2 : led = 6'b110110;   
                          4 : led = 6'b101101;   
                          8 : led = 6'b111111;
                          default : led = 6'b011011;   
                 endcase  
              end     
          end  
    end  
endmodule