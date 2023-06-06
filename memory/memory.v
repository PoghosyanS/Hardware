module Memory (
	input wire clk,
  	input wire [7:0] data_input,
  	input wire [3:0] address,
  	input wire w_enable,
  	output reg [7:0] data_output
);
  
	reg [7:0] mem [0:15]; 
	always @(posedge clk) begin
    		if (w_enable) begin
      			mem[address] <= data_input; 
    		end
    	data_output <= mem[address];

endmodule

