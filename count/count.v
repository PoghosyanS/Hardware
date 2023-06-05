module test (
  input wire clk,
  input wire reset,
  input wire btn_plus,
  input wire btn_minus,
  output reg led_1,
  output reg led_2,
  output reg led_3,
  output reg led_4
);

  reg [1:0] st;
  reg [24:0] count;
  reg [3:0] num;

  always @(posedge clk) begin
    if (count == 25'd25000000) begin
      count <= 0;
      if (btn_plus)
        num <= num + 4'b0001;
      else if (btn_minus)
        num <= num - 1; 
      st <= st + 1;
    end
    else
      count <= count + 1;
  end

  always @(posedge clk) begin
    if (reset) begin
      num <= 4'b0000; 
      led_1 <= 1'b0;
      led_2 <= 1'b0;
      led_3 <= 1'b0;
      led_4 <= 1'b0;
    end
    else begin
      case (st)
        2'b00: begin
          led_1 <= num[0];
          led_2 <= num[1];
          led_3 <= num[2];
          led_4 <= num[3];
        end
        2'b01: begin
          led_1 <= 1'b0;
          led_2 <= 1'b0;
          led_3 <= 1'b0;
          led_4 <= 1'b0;
        end
      endcase
    end
  end

endmodule
     
