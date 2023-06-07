module pwm_control_tb;

  	reg clk;
  	wire led;

  	pwm_control dut (
    	.clk(clk),
    	.led(led)
  );

  	always begin
    	#5 clk = ~clk;
  	end

  	initial begin
    	clk = 0;
    	#10;

    	#100;
    	$display("Increasing brightness...");
    	repeat(255) begin
      	#10;
    	end

    	#100;
    	$display("Decreasing brightness...");
    	repeat(255) begin
      	#10;
    	end

    $finish;
  end

endmodule

