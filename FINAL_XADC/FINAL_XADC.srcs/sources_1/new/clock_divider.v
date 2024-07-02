`default_nettype none
`timescale 1ns/1ps

//module clock_divider #( parameter DIV_N = 'd4 ) ( input wire clk_in, output wire clk_out, input wire do_reset, output reg is_ready );
 
//	reg [DIV_N-1:0] divcounter;
 
//	always @(posedge clk_in)
//		if(do_reset) begin
//			divcounter <= 32'b0;
//			is_ready <= 1'b1;
//		end
//		else divcounter <= divcounter + 'd1;
 
//	assign clk_out = divcounter[DIV_N-1];

//endmodule

module clock_divider #(parameter DIV_N = 100) (
    input wire clk_in,
    input wire do_reset,
    output reg clk_out,
    output reg is_ready
);
 
    reg [6:0] divcounter; // 7 bits to count up to 100
 
    always @(posedge clk_in or posedge do_reset) begin
        if (do_reset) begin
            divcounter <= 7'd0;
            clk_out <= 1'b0;
            is_ready <= 1'b0;
        end else begin
            if (divcounter == (DIV_N - 1)) begin
                divcounter <= 7'd0;
                clk_out <= ~clk_out; // Toggle the output clock
                is_ready <= 1'b1; // Indicate the clock divider is running
            end else begin
                divcounter <= divcounter + 7'd1;
                is_ready <= 1'b0;
            end
        end
    end

endmodule

