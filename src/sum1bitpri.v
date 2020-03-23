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
//Esta es la descripción de hardware para el sumador de 1 bit, en esta no se hace la descripción per se de las compuertas, sino que se usa un registro.

module sum1bit(
    input A,
    input B,
    input Cin,
    output Cout,
    output S
    );
//Aqui se define un registro con un tamaño de 2 y se le asigna en la posición 0 la salida de la suma y en la posición 2 el valor del carry resultante.    
    reg [1:0] yo;
    assign S=yo[0];
    assign Cout=yo[1];
    always @ ( * ) begin
    yo = A+B+Cin;
    end
endmodule
