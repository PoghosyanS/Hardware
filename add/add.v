module binary_adder(input [3:0] A, input [3:0] B, output [3:0] sum);

  wire [3:0] C;
  wire [3:0] temp;
  assign C[0] = 1'b0; 
  assign temp[0] = A[0] ^ B[0] ^ C[0];
  assign C[1] = (A[0] & B[0]) | (C[0] & (A[0] ^ B[0]));
  assign temp[1] = A[1] ^ B[1] ^ C[1];
  assign C[2] = (A[1] & B[1]) | (C[1] & (A[1] ^ B[1]));
  assign temp[2] = A[2] ^ B[2] ^ C[2];
  assign C[3] = (A[2] & B[2]) | (C[2] & (A[2] ^ B[2]));
  assign temp[3] = A[3] ^ B[3] ^ C[3];
  assign sum = temp;

endmodule
  
