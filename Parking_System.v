`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2025 15:06:58
// Design Name: 
// Module Name: Parking_System
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


module Parking_System(
    input [14:0] cars, // Sensors installed at each parking slot 
    output reg [3:0] count // Output; number of cars parked 
    ); 
    
    integer i;

    always @(*) begin
        count = 0;
        for(i = 0; i < 15; i = i + 1) begin
            count = count + cars[i];
        end 
    end

endmodule

