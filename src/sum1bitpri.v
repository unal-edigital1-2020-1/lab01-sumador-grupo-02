`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2020 00:52:08
// Design Name: 
// Module Name: Sumador 1Bit
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


module sum1bit(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
    
    reg [1:0] yo;
    assign S=yo[0];
    assign Cout=yo[1];
    always @ ( * ) begin
    yo = A+B+Cin;
    end
endmodule
