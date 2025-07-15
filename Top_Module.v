`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 15:39:55
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input [14:0] cars,
    output [3:0] count,
    output [6:0] seg,
    output [3:0] an
    );
    
    assign an=4'b1110;// Out of four 7 segment displays we are using the right most 
    
    Parking_System U0(cars,count);
    Seven_Segment U1(count,seg);
endmodule
