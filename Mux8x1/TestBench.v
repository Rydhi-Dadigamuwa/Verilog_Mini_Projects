`timescale 1ns / 1ps

module MUX8x1_tb;

  reg [3:0] A1, A2, A3, A4, A5, A6, A7, A8;
  reg [2:0] S;
  wire [3:0] OUT;

  MUX8x1 uut (
    .A1(A1), .A2(A2), .A3(A3), .A4(A4), .A5(A5), .A6(A6), .A7(A7), .A8(A8),
    .S(S), 
    .OUT(OUT)
  );
 
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;

    A1 = 4'b0001; A2 = 4'b0010; A3 = 4'b0011; A4 = 4'b0100;
    A5 = 4'b0101; A6 = 4'b0110; A7 = 4'b0111; A8 = 4'b1000;

    S = 3'b000; #10; //for A1
    S = 3'b001; #10; //for A2
    S = 3'b010; #10; //for A3
    S = 3'b011; #10; //for A4
    S = 3'b100; #10; //for A5
    S = 3'b101; #10; //for A6
    S = 3'b110; #10; //for A7
    S = 3'b111; #10; //for A8

    $finish; 
  end

endmodule