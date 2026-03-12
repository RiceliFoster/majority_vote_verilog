
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Riceli Foster
// ECE 274
// Create Date: 02/10/2026 02:50:27 PM
// Design Name: Majority Vote Test Bench
// Module Name: project_1_tb
// Project Name: Majority Vote
// Description: Produces the test values to ensure both the majority vote structural and behavioral code work as intended,
//... according to the truth table

//////////////////////////////////////////////////////////////////////////////////


module project_1_tb();

    // Define the inputs and outputs for the test

    reg a, b, c, d;
    wire out, tie;
   
    // Define project_1 module as a function that includes every input and output pre-defined
   
    project_1_structural uut (
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .out(out),
        .tie(tie)
        );
       
       // Begin the test with every single test case (there should be 16 total combinations)
        initial begin
       
        a = 0; b = 0; c = 0; d = 0; #10;
        a = 0; b = 0; c = 0; d = 1; #10;
        a = 0; b = 0; c = 1; d = 1; #10;
        a = 0; b = 1; c = 1; d = 1; #10;
        a = 0; b = 1; c = 1; d = 0; #10;
        a = 0; b = 1; c = 0; d = 0; #10;
        a = 1; b = 1; c = 1; d = 1; #10;
        a = 1; b = 1; c = 1; d = 0; #10;
        a = 1; b = 1; c = 0; d = 0; #10;
        a = 1; b = 0; c = 0; d = 0; #10;
        a = 1; b = 0; c = 1; d = 1; #10;
        a = 1; b = 0; c = 0; d = 1; #10;
        a = 0; b = 1; c = 0; d = 1; #10;
        a = 0; b = 0; c = 1; d = 0; #10;
        a = 1; b = 1; c = 0; d = 1; #10;
        a = 1; b = 0; c = 1; d = 0; #10;
     end // End the test

endmodule // End the module