module binary_adder_simulation;

  reg [3:0] A;
  reg [3:0] B;

  wire [3:0] sum;

  binary_adder binary (
    .A(A),
    .B(B),
    .sum(sum)
  );

  initial begin
    A = 4'b0101;
    B = 4'b0110;

    $display("A = %b, B = %b", A, B);

    // Wait for 10 time units
    #10;

    $display("sum = %b, sum = %d", sum,sum);
  end

endmodule

