module control(
  input wire clk,
  output reg led
);

  reg [7:0] counter;
  reg [7:0] cycle;

  always @(posedge clk) begin
    counter <= counter + 1;

    if (counter >= cycle)
      led <= 0;
    else
      led <= 1;
  end

  always @(posedge clk) begin
    if (counter == 0)
      cycle <= cycle + 1;
    else if (counter == 255)
      cycle <= cycle - 1;
  end

endmodule

