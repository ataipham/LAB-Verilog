`timescale 1ns / 1ps

module testbench_4bitadd;
reg [4:0] pA,pB;
reg pC0;
wire pC4;
wire [3:0] pS;
//integer i,j;
//reg [3:1] pC;
ex3_4bitadd TESTBENCH(pA,pB,pS,pC0,pC4);
initial 
begin
pC0=1'b0;
    for(pA=0;pA<15;pA=pA+1)
        for(pB=0;pB<15;pB=pB+1) #10;

#10 pC0=1'b1;
    for(pA=0;pA<15;pA=pA+1)
        for(pB=0;pB<15;pB=pB+1) #10;
       $finish;         
    
end
endmodule
