`timescale 1ns / 1ps
module fifo_tb;
    reg wr_clk;
    wire rd_clk;
    reg [15:0] din;
    wire [15:0] dout;
    reg[15:0] rdata;
  //  reg empty;
    wire empty;
    reg rd_en;
    reg wr_en;
    wire full;
    reg rstn;
    reg stop;
    integer i;
    Synchro_FIFO uut (.rstn(rstn), .wr_en(wr_en), .rd_en(rd_en), .wr_clk(wr_clk), .rd_clk(rd_clk), .din(din), .dout(dout), .empty(empty) , .full(full)
    );
    
    always #10 wr_clk = ~wr_clk;
    
    assign rd_clk = wr_clk;
    
    initial begin
    wr_clk <= 0;
    
    rstn <= 0;
    wr_en <= 0;
    rd_en <= 0;
    stop <= 0;
    
    #50 rstn <= 1;
    end
    
    initial begin
    @(posedge wr_clk);
    
    for( i = 0 ; i< 50; i=i+1) begin
    
    while (full) begin
    @(posedge wr_clk);
    $display("[%0t] FIFO is full, wait for reads to happen", $time);
    end;
    
    wr_en <= $random;
    din <= $random;
    
    $display("[%0t] wr_clk i=%0d wr_en=%0d din=0x%0h ", $time, i ,wr_en, din);
    
    @(posedge wr_clk);
    end
    
    stop = 1;
    end
    
    initial begin
    @(posedge rd_clk);
    
    while(!stop) 
    begin
        while(empty) 
        
        begin
            rd_en <= 0;
            $display ("[%0t] FIFO is empty, wait for writes happen" , $time);
            @(posedge rd_clk);
        end;
        
        rd_en <= $random;
        @(posedge rd_clk);
        rdata <= dout;
        $display ("[%0t] rd_clk rd_en=%0d rdata=0x%0h ", $time, rd_en, rdata);
        end
        
        #500 $finish;
     end
endmodule
