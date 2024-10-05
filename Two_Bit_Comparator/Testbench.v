module tb_comparator_2bit;

reg [1:0] A; 
reg [1:0] B; 
wire A_greater, A_less, A_equal; 

comparator_2bit uut (
    .A(A),
    .B(B),
    .A_greater(A_greater),
    .A_less(A_less),
    .A_equal(A_equal)
);

initial begin
  $dumpfile("dump.vcd");
  $dumpvars;
    // Monitor the inputs and outputs
    $monitor("Time = %0t | A = %b | B = %b | A_greater = %b | A_less = %b | A_equal = %b", 
              $time, A, B, A_greater, A_less, A_equal);


    A = 2'b00; B = 2'b00; #10; // A == B
    A = 2'b01; B = 2'b10; #10; // A < B
    A = 2'b11; B = 2'b01; #10; // A > B
    A = 2'b10; B = 2'b10; #10; // A == B
    A = 2'b01; B = 2'b00; #10; // A > B
    A = 2'b00; B = 2'b01; #10; // A < B

    $stop;
end

endmodule
