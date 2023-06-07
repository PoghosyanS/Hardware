module binary_adder(input A, input B, input Cin, output S, output Cout);
  assign S = A ^ B ^ Cin;
  assign Cout = (A & B) | (Cin & (A ^ B));
endmodule

module full_adder(input [3:0] A, input [3:0] B, output [3:0] Sum);
  wire [3:0] Cin;
  wire [3:0] Carry;

  binary_adder FA0 (.A(A[0]), .B(B[0]), .Cin(1'b0), .S(Sum[0]), .Cout(Carry[0]));
  binary_adder FA1 (.A(A[1]), .B(B[1]), .Cin(Carry[0]), .S(Sum[1]), .Cout(Carry[1]));
  binary_adder FA2 (.A(A[2]), .B(B[2]), .Cin(Carry[1]), .S(Sum[2]), .Cout(Carry[2]));
  binary_adder FA3 (.A(A[3]), .B(B[3]), .Cin(Carry[2]), .S(Sum[3]), .Cout(Carry[3]));
endmodule
