`default_nettype none


module tt_um_seven_segment_seconds  (
    input  wire [7:0] ui_in,    // Dedicated inputs - connected to the input switches
    output wire [7:0] uo_out,   // Dedicated outputs - connected to the 7 segment display
    input  wire [7:0] uio_in,   // IOs: Bidirectional Input path
    output wire [7:0] uio_out,  // IOs: Bidirectional Output path
    output wire [7:0] uio_oe,   // IOs: Bidirectional Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // will go high when the design is enabled
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    assign uio_oe = 8'b11111111;
    assign uio_out = 8'b11111111;
    wire [7:0] connect1;
    wire [7:0] connect2;
    wire [7:0] connect3;
    wire [7:0] connect4;
    wire [7:0] connect5;
    wire [7:0] connect6;
    wire [7:0] connect7;

    // put bottom 8 bits of second counter out on the bidirectional gpio
   
  
    decoder  decoder1 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (ui_in),
       .V_mem (connect1)
     );
    decoder  decoder2 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect1),
       .V_mem (connect2)
     );
    decoder  decoder3 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect2),
        .V_mem (connect3)
     );
    decoder  decoder4 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect3),
        .V_mem (connect4)
     );
    decoder  decoder5 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect4),
        .V_mem (connect5)
     );
    decoder  decoder6 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect5),
        .V_mem (connect6)
     );
    decoder  decoder7 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect6),
       .V_mem (connect7)
     );
    decoder  decoder8 (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (connect7),
       .V_mem (uo_out)
     );
endmodule
