`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Riceli Foster
// ECE 274
// Create Date: 02/10/2026 02:50:04 PM
// Design Name: Majority_Vote_Structural
// Module Name: project_1
// Project Name: Majority Vote
// Target Devices: FPGA Board (XILINK NEXYS 4-DDR)
// Description: Calculates majority vote and outputs a tie if there are equal amounts of each input, and produces the majority vote
// ... if there are more than two equal inputs

//////////////////////////////////////////////////////////////////////////////////


module project_1_structural(a, b, c, d, out, tie);

    // Define inputs a, b, c, d & outputs out and tie
    input a, b, c, d;
    output out, tie;
   
    // Define all wires used (any connections between a,b,c,d and ultimately out & tie are listed here)
   
    wire aNot, bNot, cNot, dNot;
    wire temp1, temp2, temp3, temp4, temp5, temp6, temp7;
    wire temp8, temp9, temp10, temp11, temp12, temp13, temp14;
    wire temp15;
    wire temp16, temp17, temp18, temp20;
    wire var1, var2, var3, var4, var5, var6, var7, var8, var9, var10;
    wire var11, var12, var13, var14, var15, var16, var17, var18, var19;
    wire var20, var21, var22;
   
   // Below gives the structural code for the majority vote problem
    not a1 (aNot, a);
    not a2 (bNot, b);
    not a3 (cNot, c);
    not a4 (dNot, d);
   
    and b1 (temp1, aNot, b);
    and b2 (temp2, c, d);
    and b3 (temp3, temp1, temp2);
   
    and a5 (temp4, a, b);
    and a6 (temp5, c, d);
    and a7 (temp6, temp4, temp5);
   
    and a8 (temp7, a, b);
    and a9 (temp8, c, dNot);
    and a10 (temp9, temp7, temp8);
   
    and a11 (temp15, a, bNot);
    and a12 (temp16, c, d);
    and a13 (temp17, temp15, temp16);
   
    and a14 (temp10, a, b);
    and a15 (temp11, cNot, d);
    and a16 (temp12, temp10, temp11);
   
    or a17 (temp13, temp3, temp6);
    or a18 (temp14, temp17, temp9);
   
    or a19 (temp20, temp13, temp14);
    or a20 (out, temp20, temp12);
   
    // For ties:
   
    and a21 (var1, aNot, bNot);
    and a22 (var2, c, d);
    and a23 (var3, var1, var2);
   
    and a24 (var4, aNot, b);
    and a25 (var5, c, dNot);
    and a26 (var6, var4, var5);
   
    and a27 (var7, a, b);
    and a28 (var8, cNot, dNot);
    and a29 (var9, var7, var8);
   
    and a30 (var10, a, bNot);
    and a31 (var11, cNot, d);
    and a32 (var12, var10, var11);
   
    and a33 (var13, aNot, b);
    and a34 (var14, cNot, d);
    and a35 (var15, var13, var14);
   
    and a36 (var16, a, bNot);
    and a37 (var17, c, dNot);
    and a38 (var18, var16, var17);
   
    or a39 (var19, var3, var6);
    or a40 (var20, var9, var12);
    or a41 (var21, var15, var18);
   
    or a42 (var22, var19, var20);
    or a43 (tie, var22, var21);
   
   
   
endmodule
