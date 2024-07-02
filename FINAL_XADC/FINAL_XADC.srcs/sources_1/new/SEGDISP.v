`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2023 23:21:49
// Design Name: 
// Module Name: SEGDISP
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


module sdd_gen(
 input [15:0] sw,
 input clk,
 input rst,
 output reg[6:0] a_to_g,
 output reg[7:0] an,
// output wire[5:0] an1,
 output wire dp
 );
 

 assign dp=1'b1;
 
 reg[3:0] digit;
 wire [1:0]s;
 wire[7:0] aen;// there are total 8 7segment display out of which we need 4 so s is enough
 
 reg[19:0] clkdiv;
 assign s=clkdiv[19:18];
 assign aen=8'b11111111;
 
 //7-segment decoder :hex7neg
 
 always@(digit)
 begin
   case(digit)
   0:a_to_g=7'b0000001;
   1:a_to_g=7'b1001111;
   2:a_to_g=7'b0010010;
   3:a_to_g=7'b0000110;
   4:a_to_g=7'b1001100;
   5:a_to_g=7'b1000100;
   6:a_to_g=7'b0100000;
   7:a_to_g=7'b0001111;
   8:a_to_g=7'b0000000;
   9:a_to_g=7'b0000100;
   'ha:a_to_g=7'b0001000;
   'hb:a_to_g=7'b1100000;
   'hc:a_to_g=7'b0110001;
   'hd:a_to_g=7'b1000010;
   'he:a_to_g=7'b0110000;
   'hf:a_to_g=7'b0111000;
   default: a_to_g=7'bzzzzzzz;
   endcase
   end
   
   // clock divider
   always @(posedge clk or posedge rst)
   begin 
       if (rst)
             clkdiv<=0;
         else
             clkdiv<=clkdiv+1;
         end
 //digit select :encode
 
 always@(aen,s)
 begin
 an=8'b11111111; // sab ko off karna har change in s pe
 if(aen[s]==1)
   an[s]=0; // apna desired digit ko on karna phir 
   end
 
 // 4-to-1 MUX :mux4x1
 always@(s,sw)
 begin
  case(s)
    0:digit=sw[3:0];
    1:digit=sw[7:4];
    3:digit=sw[11:8];
    4:digit=sw[15:12];
    default:digit=4'bzzzz;
    endcase
    
    end
 
 endmodule
