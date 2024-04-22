`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2024 01:16:24 PM
// Design Name: 
// Module Name: main_module
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


module main_module(
    input wire clk,
    input wire ce,
    input wire signed[14:0]A,
    input wire signed[14:0]B,
    input wire signed[14:0]C,
    output wire signed[29:0]Y
    );
    
wire signed [14:0] add_product;

// Latencja: 2    
add_sub_module addsub_inst (
    .A(A),
    .B(B),
    .clk(clk),
    .ce(ce),
    .S(add_product)
);

// Logika opóźniania sygnału C
reg signed [14:0] C_delayed;
always @(posedge clk) begin
    if (ce) C_delayed <= C;
end

wire signed [29:0] mul_out;

multiplier_module multi_inst (
    .clk(clk),
    .A(C),
    .B(add_product),
    .P(mul_out)
);

// Mnożarka
reg signed [29:0] product;
always @(posedge clk) begin
    if (ce) product <= A + B * C_delayed;
end

// Wyjście
assign Y = mul_out;


endmodule
