module binary_adder_tb;
  reg [3:0] A;
  reg [3:0] B;
  wire [3:0] Sum;

  full_adder dut (.A(A), .B(B), .Sum(Sum));

  initial begin
    // Test case 1: A = 5 (0101), B = 5 (0101)
    A = 4'b0101;
    B = 4'b0101;
    #10;

    $display("Test Case 1:");
    $display("A = %b", A);
    $display("B = %b", B);
    $display("Sum = %b", Sum);
    $display("");

    // Test case 2: A = 8 (1000), B = 2 (0010)
    A = 4'b1000;
    B = 4'b0010;
    #10;

    $display("Test Case 2:");
    $display("A = %b", A);
    $display("B = %b", B);
    $display("Sum = %b", Sum);
    $display("");

    // Test case 3: A = 15 (1111), B = 1 (0001)
    A = 4'b1111;
    B = 4'b0001;
    #10;

    $display("Test Case 3:");
    $display("A = %b", A);
    $display("B = %b", B);
    $display("Sum = %b", Sum);
    $display("");

    $finish;
  end
endmodule

