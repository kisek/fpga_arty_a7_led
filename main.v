/** main.v for Arty A7-35T  ArchLab, Institute of Science Tokyo / Tokyo Tech **/
`default_nettype none

module m_main (
    input  wire  w_clk  ,
    output wire [3:0] w_led
);

    reg [31:0] r_cnt = 0;
    always @(posedge w_clk) r_cnt <= r_cnt + 1;
    assign w_led[0] = r_cnt[22];
    assign w_led[1] = r_cnt[23];
    assign w_led[2] = r_cnt[24];
    assign w_led[3] = r_cnt[25];    
endmodule
