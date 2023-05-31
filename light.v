module blink (clk, reset, led_1, led_2, led_3, led_4);

input clk;
input reset;
output reg led_1;
output reg led_2;
output reg led_3;
output reg led_4;

reg [1:0] st;
reg [24:0] count;

always @(posedge clk) begin
	if (count == 25'd25000000) begin
		count <= 0;
		st <= st + 1;
	end
	else
		count <= count + 1;

end


always @(posedge clk) begin
	if (reset) begin
		led_1 <= 1'b0;
		led_2 <= 1'b0;
		led_3 <= 1'b0;
		led_4 <= 1'b0;
	end

	else

	case (st)
		2'b00: begin
			led_1 <= 1'b1;
		        led_2 <= 1'b0;
		        led_3 <= 1'b0;
		        led_4 <= 1'b0;
		end
		2'b01: begin
			led_1 <= 1'b0;
		        led_2 <= 1'b1;
		        led_3 <= 1'b0;
		        led_4 <= 1'b0;
		end
		2'b10: begin
			led_1 <= 1'b0;
		        led_2 <= 1'b0;
		        led_3 <= 1'b1;
		        led_4 <= 1'b0;
		end
		2'b11: begin
			led_1 <= 1'b0;
		        led_2 <= 1'b0;
		        led_3 <= 1'b0;
		        led_4 <= 1'b1;
		end
		default: st <= 1'b0;
	endcase

end

endmodule:
