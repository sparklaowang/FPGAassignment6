module divider(
    in_clk,
    out_clk
);

input in_clk;
output out_clk;
reg out_clk;
reg [16:0] counter;

initial begin
  out_clk <= 0;
  counter <= 0;
end
always @(posedge in_clk) begin
  counter <= counter + 1;
  if (counter == 'h5F5E10) begin
    counter <= 0;
    out_clk <= ~ out_clk;
  end
end

endmodule