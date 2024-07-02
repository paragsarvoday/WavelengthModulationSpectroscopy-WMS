`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2023 06:00:42
// Design Name: 
// Module Name: top_xadc
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


module top_xadc
( input clk,
input rst,
input freqsel,
input vauxp,
input vauxn,
output out,
output led_busy

//output [6:0] a_to_g,
 //output [7:0] an,
// output wire[5:0] an1,
 //output wire dp
   );
   reg [11:0] coswave;
    reg [11:0]coswave_phase;
     reg [11:0]coswave_phase1;
   reg [11:0] lut_cos [0:59];
   //--------------------------------------------
   reg [11:0] lut_cos1 [0:119];
   reg [11:0] sinusoidal_phase;
    reg [11:0] sinusoidal_phase1;
   reg [11:0] sinusoidal;
   reg [11:0] lut_sinusoidal [0:59];
  // --------------------------------------------
   reg [11:0] lut_sinusoidal1 [0:119];
   wire [6:0] addr;
   wire [4:0] channel_out;
   wire eoc_out;
   assign addr ={2'b00,channel_out};
   wire [15:0] do_out; 
   wire rdy;
   reg [15:0] adc_data;
  reg [23:0] fir1_out;
  reg [23:0] fir2_out;
   // wire [7:0] y1;
   wire [23:0] y1;
    wire stb1 ;
    wire stb2 ;
reg [11:0] x_12bit; 
  wire [23:0] x_23bit;
  wire [23:0] y_23bit;
  wire [23:0] y2;
  wire [11:0] x;
   wire open; 
    wire open1;    
    reg [11:0] secout;
   //adanlog to digital convertor
    xadc_wiz_0 XADC
          (
          .daddr_in(addr),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .di_in(16'b00),               // Input data bus for the dynamic reconfiguration port
          .dwe_in(1'b0),              // Write Enable for the dynamic reconfiguration port
          .reset_in(rst),            // Reset signal for the System Monitor control logic
          .vauxp11(vauxp),             // Auxiliary channel 11
          .vauxn11(vauxn),
          .busy_out(led_busy),            // ADC Busy signal
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .drdy_out(rdy),            // Data ready signal for the dynamic reconfiguration port
          .eoc_out(eoc_out),             // End of Conversion Signal
          .eos_out(),             // End of Sequence Signal
          .alarm_out(),           // OR'ed output of all the Alarms    
          .vp_in(1'b0),               // Dedicated Analog Input Pair
          .vn_in(1'b0));
 
  //Multiplier for sinwave reference 
 mult_gen_0 m1(
                 .CLK(clk),
                 .A(do_out[15:4]),
                 .B(sinusoidal),
                  .CE(rdy),
                  .P(x_23bit)
                    );
                    
   // multiplier for coswave refernece
    mult_gen_0 m2(
                 .CLK(clk),
                 .A(do_out[15:4]),
                 .B(coswave),
                  .CE(rdy),
                  .P(y_23bit)
                    );         
 
 // fir filter 1 for sinwave part 
     fir_compiler_0 fir1 (
    .aclk(clk),
    .s_axis_data_tvalid (rdy),
    .s_axis_data_tready (open),
    .s_axis_data_tdata(x_23bit),
    .m_axis_data_tvalid(stb1),
    .m_axis_data_tdata(y1)
  );
  
  // fir filter 2 for coswave part
     fir_compiler_0 fir2 (
    .aclk(clk),
    .s_axis_data_tvalid (rdy),
    .s_axis_data_tready (open1),
    .s_axis_data_tdata(y_23bit),
    .m_axis_data_tvalid(stb2),
    .m_axis_data_tdata(y2)
  );
  
//assign x_16bit = {3'b000,do_out[15:4]};
//sinwave generator 
integer i=0;
integer j=0;
integer i1=0;
integer j1=0;

 // Initialize the lookup table for the sinusoidal wave 
 initial 
     begin
   
    for ( i = 0; i < 60; i = i + 1) begin
      lut_sinusoidal[i] = (204 * $sin(2* 3.14 * i / (60)) );
    end
 //----------------------------------------------------------------------   
    for ( i1 = 0; i1 < 120; i1 = i1 + 1) begin
      lut_sinusoidal1[i1] = (204 * $sin(2* 3.14 * i1 / (120)) );
    end
     sinusoidal_phase = 0;
      sinusoidal_phase1 = 0;
     sinusoidal=0;
 //    for ( i = 39; i < 78; i = i + 1) begin
   //   lut_sinusoidal[i] =(204 * $sin( 2*3.14 * i / (77)) );
  //  end
  end
  
  
 //// Initialize the lookup table for the coswave wave generation
 initial 
 
 
     begin     
       for ( j = 0; j < 60; j = j + 1) begin
        lut_cos[j] = (204 * $cos(2* 3.14 * j / (60)) );
    end
    
      //-------------------------------------------------------------   
       for ( j1 = 0; j1 < 120; j1 = j1 + 1) begin
        lut_cos1[j1] = (204 * $cos(2* 3.14 * j1 / (120)) );
    end
    
    
    
    coswave_phase1 = 0;
    coswave_phase = 0;     // Initialize the phase for the sinusoidal wave
     coswave = 0;           // Initialize the output for the sinusoidal wave
   
  end
  
         
//assign  x_12bit = adc_data[15:4] ;
                     
 always @(posedge clk or posedge rst)   
               begin:decoding_circuit
               if(rst)
                adc_data<=16'd0;
               else
                   case ({rdy,channel_out})
                   
              //   6'b100000:
               //      adc_data<=do_out;
                  6'b111011:
                       begin
                      adc_data <=do_out;
                     x_12bit <= {do_out[15:4]};
                     
                     
                      sinusoidal_phase1 = sinusoidal_phase1+1 ;
                       coswave_phase1 = coswave_phase1 + 1;
                      sinusoidal_phase = sinusoidal_phase+1 ;
                       coswave_phase = coswave_phase + 1;
                       
                       
    // Wrap around the phase for the sinusoidal wave
                if(freqsel==1'b0)
                begin
                 if (sinusoidal_phase >= 60) begin
                     sinusoidal_phase = 0;
                           end
                   sinusoidal = lut_sinusoidal[sinusoidal_phase];     
                           
                    // coswave_phase = coswave_phase + 1;
    // Wrap around the phase for the sinusoidal wave
                     if (coswave_phase >= 60) begin
                        coswave_phase = 0;
                         end
                      coswave = lut_cos[coswave_phase];
                end
                     
                   else
                     begin 
                      if (sinusoidal_phase1 >= 120) begin
                     sinusoidal_phase1 = 0;
                           end
                   sinusoidal = lut_sinusoidal1[sinusoidal_phase1];     
                           
                   //  coswave_phase = coswave_phase + 1;
    // Wrap around the phase for the sinusoidal wave
                     if (coswave_phase1 >= 120) begin
                        coswave_phase1 = 0;
                         end
                      coswave = lut_cos1[coswave_phase1];
                     end
                     end
                     
                  default:adc_data<=16'bz;
                  endcase;
                  end
                  
    
     
       always @(posedge clk)
       begin
        if(stb1==1'b1 & stb2==1'b1)
       fir1_out =y1;
       fir2_out=y2;
        end 
 
 //squaring 1    
wire [47:0] X2;
 mult_gen_1 m3 
      (
    .CLK(clk), 
    .A(y1),
    .B(y1),
    .CE(stb1),
    .P(X2)
  );//squaring 2
wire [47:0] Y2;
 mult_gen_1 m4 
      (
    .CLK(clk), 
    .A(y2),
    .B(y2),
    .CE(stb2),
    .P(Y2)
  );
  
  //adding of X2 and Y2
 wire [47:0] X2ANDY2 ;
   c_addsub_0 add1
  (
    .A(X2),
    .B(Y2),
    .CLK(clk),
    .CE(stb1),
    .S(X2ANDY2 )
  );
  
  
  wire yes;
  wire [31:0] out1;
   cordic_1 sqr
  (
    .aclk(clk),
    .s_axis_cartesian_tvalid(stb1),
    .s_axis_cartesian_tdata(X2ANDY2), 
    .m_axis_dout_tvalid(yes),
    .m_axis_dout_tdata(out1)
  );
  wire [1:0] two;
  assign two = 2'b10;
 wire [33:0] lp;
   mult_gen_2 m5
   (
    .CLK(clk), 
   .A(out1),
    .B(2), 
    .CE(yes), 
    .P(lp) 
  );
 // wire [55:0] lock_in;
   wire [11:0] divsor ;
   assign divsor = 12'b000011001100;
   
   //THIS DIV MODULE IS NOT USED
  //------------------------------------
   div_gen_0 div
      (
    .aclk(clk), 
    .s_axis_divisor_tvalid(yes), 
    .s_axis_divisor_tdata(divsor), 
    .s_axis_dividend_tvalid(yes),
    .s_axis_dividend_tdata(lp), 
   .m_axis_dout_tvalid(final_yes) ,
   .m_axis_dout_tdata(lock_in )
  );
   //----------------------------------------------
  reg [7:0] out;
   always @(posedge clk)
   begin
  if(yes==1'b1)
   secout = lp/divsor;
   out=3*secout[11:4]+40;
   
  end
  
 
  //reg [12:0] lp1;
 
      // always @(posedge clk)
       //begin
        //if(yes==1'b1)
        //lp1=lp/204;
        //end 

  
  //sdd_gen SEGDISP(
                //  .sw(do_out),
                //  .clk(clk),
                //  .rst(rst),
                // .a_to_g(a_to_g),
                // .an(an),
                // output wire[5:0] an1,
                // .dp(dp)
  // );
 
      
endmodule
