`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/15/2024 02:58:15 PM
// Design Name: 
// Module Name: tb_main_module
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


module tb_main_module;

reg clk, ce;
reg signed [31:0] A, B, C;
wire signed [63:0] Y;

// Instancja modułu
MultiplierAdder dut (
    .clk(clk),
    .ce(ce),
    .A(A),
    .B(B),
    .C(C),
    .Y(Y)
);

// Generowanie zegara
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

// Początkowe wartości A, B, C
initial begin
    A = 32'b01010101; // Przykładowe wartości
    B = 32'b00110011;
    C = 32'b00001111;
    ce = 1;
    
    #10; // Oczekiwanie na odpowiednią liczbę cykli zegara
    
    // Sprawdź wynik
    $display("Y = %d", Y);
    
    $finish; // Zakończ symulację
end

endmodule
