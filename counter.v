module counter(
    clk,
    en,
    clr,
    out
);

input clk;
input en;
input clr;
output [7:0]out;

reg [7:0]out;

always @(posedge clk) begin
    if (en == 1) begin
      out <= out + 1;
    end
    else begin
      out <= out;
    end
    if(clr)
      out <= 8'b00000000;
end



endmodule
