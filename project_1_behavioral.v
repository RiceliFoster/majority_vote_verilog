`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Riceli Foster
// ECE 274
// Create Date: 02/11/2026 02:22:50 PM
// Design Name: Majority_Vote_Behavioral_Continuous
// Module Name: project_1_behavioral
// Project Name: Majority Vote // Project 1B
// Target Devices: FPGA Board (XILINKX NEXYS 4-DDR)
// Description: Calculates majority vote and outputs a tie if there are equal amounts of each input, and produces the majority vote
// ... if there are more than two equal inputs
//
//
// Revision 0.01 - File Created

//////////////////////////////////////////////////////////////////////////////////


module project_1_behavioral(out, tie, a, b, c, d);
   
    // Declare input and output wires (four judges means four inputs)
    input wire a, b, c, d;
    output wire out, tie;
   
    // Assigns out to the boolean expression given by the majority vote truth table
    assign out = (!a && b && c && d) || (a && b && c && d) || (a && b && c && !d) || (a && !b && c && d) || (a && b && !c && d);
   
    // Assigns tie to the boolean expression given by the majority vote truth table
    assign tie = (!a && !a && c && d) || (!a && b && c && !d) || (a && b && !c && d) || (!a && b && !c && d) || (a && !b && c && !d);
   
endmodule