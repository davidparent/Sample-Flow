module QIF_8B (
  input  clk,          // Clock input
  input  rst_n,       // Reset input
  input   I_syn,     // Input B (8-bit, signed)
  output   V_mem     // Output voltage V (8-bit, signed) 
);
  input clk;
  input rst_n;
  input [7:0] I_syn;
  output [7:0] V_mem;
  //wire reset = ! rst_n;
  //reg [7:0] A;  
  assign V_mem =I_syn;
  //always @(posedge clk  or posedge rst_n) begin
        // if reset, set counter to 0
       // if (rst_n) begin
      //      A <= 0;
    //    end else begin
    //        if (A>=8'sd50) begin
    //            A<=-8'sd20;
    //        end else begin
       //         A<=A+I_syn/4+(A/8)*(A/8);
      //  end
     //   end
 //   end
endmodule
