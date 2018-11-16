module ass(
	clk, // Clk input
    pause, // Start Stop trigger
    clear, // Clear trigger
    led_drv, // 8 Bit led drv
    pause_sta
);

input clk;
input pause;
input clear;
output [13:0]led_drv;
output pause_sta;
reg [13:0]led_drv;
wire count_enable;
wire pause_sta;
wire clear_sta;
wire carry_wire;
wire [7:0]counter_out;

stablizer stb1(pause, clk, pause_sta);
stablizer stb2(clear, clk, clear_sta);
switch sw1(pause_sta, count_enable);
divider divder1(clk, count_clk);
counter cnt1(count_clk, count_enable, clear_sta, counter_out[7:0]);
seg7dev drv1(counter_out[3:0], led_drv[6:0]);
seg7dev drv2(counter_out[7:4], led_drv[13:7]);

endmodule