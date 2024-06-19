`default_nettype none
`timescale 1ns/1ps

`define SPI_WORD_LEN 8
`define TEST_BYTE 'b10011110
`define SPI_CLK_DIV 'sd2

module fpga_top (
    input wire WF_CLK,
    output wire SIGNAL_CLOCK_OUT,
    output wire SIGNAL_SS_OUT,
    output wire SIGNAL_DATA_OUT
);

    // Local registers and wires
    reg [7:0] resetn_counter;
    wire resetn = &resetn_counter;
    
    reg reset_spi;
    wire spi_ready;
    
    wire proc_word;
    reg process_next_word;
    reg [`SPI_WORD_LEN - 1:0] data;
    
    reg reset_div;
    wire divider_ready;
    wire divided_master_clock; 
    
    // Clock divider module
    clock_divider #( .DIV_N(`SPI_CLK_DIV) ) clkdiv (
        .clk_in(WF_CLK), 
        .clk_out(divided_master_clock), 
        .do_reset(reset_div), 
        .is_ready(divider_ready)
    );
    
    // SPI master module
    spi_module #( .SPI_MASTER (1'b1) ) spi_master (
        .master_clock(WF_CLK),
        .SCLK_OUT(SIGNAL_CLOCK_OUT),
        .SCLK_IN(divided_master_clock),
        .SS_OUT(SIGNAL_SS_OUT),
        .SS_IN(),
        .OUTPUT_SIGNAL(SIGNAL_DATA_OUT),
        .processing_word(proc_word), 
        .process_next_word(process_next_word),
        .data_word_send(data),
        .INPUT_SIGNAL(),
        .data_word_recv(),
        .do_reset(reset_spi),
        .is_ready(spi_ready)
    );

    always @(posedge WF_CLK) begin
        if (!resetn) begin
            // Reset logic
            reset_div <= 1'b1;
            process_next_word <= 1'b0;
            reset_spi <= 1'b1;
            data <= `TEST_BYTE;
            resetn_counter <= resetn_counter + 'd1;
        end else begin
            if (divider_ready) begin
                reset_div <= 1'b0;
                if (spi_ready) begin
                    reset_spi <= 1'b0;
                    if (!proc_word) begin
                        if (!process_next_word) begin
                            data <= `TEST_BYTE; // Transmit predefined test byte
                        end
                        process_next_word <= 1'b1;
                    end else if (proc_word && process_next_word) begin
                        process_next_word <= 1'b0;
                    end
                end
            end
        end
    end
endmodule
