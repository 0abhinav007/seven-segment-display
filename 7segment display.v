`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.01.2023 11:47:21
// Design Name: 
// Module Name: 7segment display
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


module sevensegment(a,b,c,d,e,f,g,s3,s2,s1,s0);
output a,b,c,d,e,f,g;
input s3,s2,s1,s0;
wire [31:1]w;
not(w[1],s3);
not(w[2],s2);
not(w[3],s1);
not(w[4],s0);
and(w[5],w[1],w[2]);
and(w[6],w[1],s2,s0);
and(w[7],s3,w[2],w[3]);
and(w[8],w[2],w[3],w[4]);
and(w[9],w[1],w[2]);
and(w[10],w[2],w[3]);
and(w[11],w[1],w[3],w[4]);
and(w[12],w[1],s1,s0);
and(w[13],w[1],w[3]);
and(w[14],w[1],s0);
and(w[15],w[2],w[3]);
and(w[16],w[1],s2,s1);
and(w[17],w[1],w[2],s1);
and(w[18],s3,w[2],w[3]);
and(w[19],w[1],s1,w[4]);
and(w[20],w[2],w[3],w[4]);
and(w[21],w[1],s2,w[3],s0);
and(w[22],w[1],s1,w[4]);
and(w[23],w[2],w[3],w[4]);
and(w[24],s3,w[2],w[3]);
and(w[25],w[1],s2,w[3]);
and(w[26],w[1],w[3],w[4]);
and(w[27],w[1],s2,w[4]);
and(w[28],w[1],s2,w[3]);
and(w[29],s3,w[2],w[3]);
and(w[30],w[1],w[2],s1);
and(w[31],w[1],s1,w[4]);
or(a,w[5],w[6],w[7],w[8]);
or(b,w[9],w[10],w[11],w[12]);
or(c,w[13],w[14],w[15],w[16]);
or(d,w[17],w[18],w[19],w[20],w[21]);
or(e,w[22],w[23]);
or(f,w[24],w[25],w[26],w[27]);
or(g,w[28],w[29],w[30],w[31]);
endmodule
