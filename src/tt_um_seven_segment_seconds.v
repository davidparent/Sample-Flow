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
 

    // put bottom 8 bits of second counter out on the bidirectional gpio
   
  
    decoder  decoder (
        .clk (clk),
        .rst_n (rst_n),
        .I_syn (ui_in),
       .V_mem (uo_out)
     );


    
endmodule
