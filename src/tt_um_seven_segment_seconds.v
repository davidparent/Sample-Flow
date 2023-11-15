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
    wire reset = ! rst_n;
    wire [7:0] in;
    assign in[7:0] = ui_in[7:0];
    wire [7:0] out;
    assign uo_out[7:0] = out[7:0];
    assign uio_oe = 8'b11111111;
    assign uio_out = 8'b11111111;
    wire CLK;
    assign CLK=clk;
    wire RS;
    assign RS=rst_n;
    wire recieve_ena;
    assign recieve_ena=ena;

    // put bottom 8 bits of second counter out on the bidirectional gpio
   
  
    decoder  decoder (
        .clk (CLK),
        .rst_n (RS),
        .I_syn (in[7:0]),
       .V_mem (out[7:0])
     );


    
endmodule
