`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/20/2024 05:12:09 PM
// Design Name: 
// Module Name: tb_long_and
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_long_and #(
    parameter LENGTH=8
) ();

reg clk=1'b0;
reg [1:0]cnt=2'b0;

long_and #(LENGTH) DUT (
    .x(x),
    .y(y)
);

initial // parameters generation
begin
    while(1)
    begin
        #1; clk=1'b0;
        #1; clk=1'b1;
    end
end

always @(posedge clk)
    begin
        cnt<=cnt+1;
    end  
 
 assign a=cnt[1];
 assign b=cnt[0];

endmodule
