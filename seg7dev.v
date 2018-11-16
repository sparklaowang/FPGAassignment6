module seg7dev(
    num_in,
    drv_out
);

input [3:0]num_in;
output [6:0]drv_out;

reg [6:0]drv_out;

initial begin
  drv_out <= 8'h00;
end

always begin
  case(num_in)
    4'b0001: drv_out <= 7'b1111001;
    4'b0010: drv_out <= 7'b0100100;
    4'b0011: drv_out <= 7'b0110000;
    4'b0100: drv_out <= 7'b0011001;
    4'b0101: drv_out <= 7'b0010010;
    4'b0110: drv_out <= 7'b0000010;
    4'b0111: drv_out <= 7'b1111000;
    4'b1000: drv_out <= 7'b0000000;
    4'b1001: drv_out <= 7'b0010000;
    4'b1010: drv_out <= 7'b0001000;
    4'b1011: drv_out <= 7'b0000011;
    4'b1100: drv_out <= 7'b1000110;
    4'b1101: drv_out <= 7'b0100001;
    4'b1110: drv_out <= 7'b0000110;
    4'b1111: drv_out <= 7'b0001110;
    default: drv_out <= 7'b1111111;
    endcase
end

endmodule