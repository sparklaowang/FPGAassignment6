module switch(
    in_clk,
    out_clk
);

//basicly , switch on and off on posedges

input in_clk;
output out_clk;

reg out_clk;

always @(posedge in_clk) begin
  out_clk <= ~out_clk;
end

endmodule