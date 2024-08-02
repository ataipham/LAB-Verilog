`timescale 1ns / 1ps

module ex3_testbench;
reg pa,pb,pc_in;
wire pc_out,psum;
integer i;
ex3_fulladd TESTBENCH(pa,pb,pc_in,pc_out,psum);
initial 
begin
    for(i=0;i<8;i=i+1)
    begin
        {pc_in,pa,pb}=i;
        #10;
    end
   $finish;
end   
endmodule
