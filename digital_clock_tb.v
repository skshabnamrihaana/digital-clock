`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2026 07:59:35 PM
// Design Name: 
// Module Name: digital_clock_tb
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




module digital_clock_tb;

    // Inputs declared as reg
    reg clk;
    reg reset;

    // Outputs declared as wire
    wire [4:0] hours;
    wire [5:0] minutes;
    wire [5:0] seconds;

    // Instantiate the Unit Under Test (UUT)
    digital_clock uut (
        .clk(clk), 
        .reset(reset), 
        .hours(hours), 
        .minutes(minutes), 
        .seconds(seconds)
    );

    // Clock generation (Toggles every 5 time units)
    always #5 clk = ~clk;

    initial begin
        // Initialize Inputs
        clk = 0;
        reset = 1;

        // Wait 20 ns for global reset to settle
        #20;
        reset = 0;
        
        // Monitor the outputs in the console window
        $monitor("Time = %0d:%0d:%0d", hours, minutes, seconds);
        
        // Let the simulation run to observe roll-overs
        #100000;
        
        $finish;
    end
      
endmodule


