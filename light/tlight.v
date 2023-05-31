module check();
  	reg clk;
  	reg reset;
  	wire led_1;
  	wire led_2;
  	wire led_3;
  	wire led_4;

  	test b(.clk(clk), .reset(reset), .led_1(led_1), .led_2(led_2), .led_3(led_3), .led_4(led_4));

  	initial begin
    		$dumpfile("v.vcd");
    		$dumpvars();
  	end

  	initial begin
    		clk = 1'b0;
    		reset = 1'b0;
  	end

  	always #1 clk = ~clk;

  	initial begin
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	#100;
    	$display("%d %d %d %d", led_1, led_2, led_3, led_4);
    	$finish;
  	end
endmodule

