`timescale 1ns / 1ps

module Synchro_FIFO #(parameter DEPTH=8, DWIDTH=16)
(
input rstn,
      wr_clk,
      rd_clk,
      wr_en,
      rd_en,
  input      [DWIDTH - 1:0] din,
  output reg [DWIDTH - 1:0] dout,
  output                    empty,
                             full
  );
  
  reg [$clog2(DEPTH)-1:0]  wptr;
  reg [$clog2(DEPTH)-1:0]  rptr;
  
  //reg [DWIDTH-1 : 0] fifo[DEPTH];
  //reg [DWIDTH-1 : 0] fifo [DEPTH];
reg [DWIDTH-1:0]    fifo [0:DEPTH-1];

  
always @(posedge wr_clk)
     begin
    if (!rstn)
         begin
    wptr <= 0;
         end 
    else 
        begin
    if(wr_en & !full) 
            begin 
    fifo[wptr] <= din;
    wptr <= wptr + 1;
            end
        end
    end
  
 initial 
  begin 
  $monitor ("[%0t] [FIFO] wr_en=%0b din=0x%0h rd_en=%0b dout= 0x%0h empty = %0b full =%0b",
  $time , wr_en ,din, rd_en, dout, empty, full);
  end 
  
  always @(posedge rd_clk) 
    begin
  if(!rstn) 
        begin
  rptr <= 0; 
        end 
   else 
        begin 
            if(rd_en & !empty) 
             begin 
                dout <= fifo[rptr];
                rptr <= rptr + 1 ;
             end
        end 
    end

assign full = (wptr+1) == rptr;
assign empty = wptr == rptr;
  
endmodule
