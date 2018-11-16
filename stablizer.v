module stablizer(
    in,
    clk,
    out
);

input in,clk;
output reg out;
reg [16:0]counter;

initial begin
  counter <= 0;
end
always @(posedge clk)begin
    if (in==1 && counter < 250000)begin
      counter <= counter + 1;
    end 
    else if (in != 1 && counter > 0)begin
      counter <= counter - 1;
    end

end

always begin
	if (counter > 10)
		out <= 1;
	else
		out <= 0;
end

endmodule