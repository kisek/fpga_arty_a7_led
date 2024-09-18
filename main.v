** main.v for Arty A7-35T (xc7a35ticsg324-1L)          ArchLab, Institute of Science Tokyo **/
/*********************************************************************************************/
`default_nettype none

module m_main (
    input  wire  w_clk  ,
    output wire [3:0] w_led
);

    reg [31:0] r_cnt = 0;
    always @(posedge w_clk) r_cnt <= r_cnt + 1;
    assign w_led = r_cnt[25:22];  
endmodule
