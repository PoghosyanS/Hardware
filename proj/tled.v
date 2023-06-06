module pwm_control_tb;

  reg clk;
  wire led;

  // Instantiate the PWM module
  pwm_control dut (
    .clk(clk),
    .led(led)
  );

  // Clock generator
  always begin
    #5 clk = ~clk;
  end

  // Testbench stimulus
  initial begin
    clk = 0;
    #10;

    // Gradually increase brightness
    #100;
    $display("Increasing brightness...");
    repeat(255) begin
      #10;
    end

    // Gradually decrease brightness
    #100;
    $display("Decreasing brightness...");
    repeat(255) begin
      #10;
    end

    // End simulation
    $finish;
  end

endmodule

