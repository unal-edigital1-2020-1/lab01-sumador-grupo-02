`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.03.2020 01:09:12
// Design Name: 
// Module Name: sum4bit
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


module sum4bit(n1,n2,Co,So);
input[3:0]n1;
input[3:0]n2;
output Co;
output[3:0]So;

wire c1,c2,c3;

sum1bitpri s0 (.A(n1[0]), .B(n2[0]), .Cin(0), .Cout(c1), .S(So[0]));
sum1bitpri s1 (.A(n1[1]), .B(n2[1]), .Cin(c1), .Cout(c2), .S(So[1]));
sum1bitpri s2 (.A(n1[2]), .B(n2[2]), .Cin(c2), .Cout(c3), .S(So[2]));
sum1bitpri s3 (.A(n1[3]), .B(n2[3]), .Cin(c3), .Cout(Co), .S(So[3]));

endmodule
