`timescale 1ns / 1ps

module Demux1x8_tb;

    reg [2:0] i;
    reg [2:0] s;
    reg e;
    wire [2:0] i1, i2, i3, i4, i5, i6, i7, i8;
    
    Demux1x8 dut(.I(i), .S(s), .E(e), .I1(i1), .I2(i2), .I3(i3), .I4(i4), .I5(i5), .I6(i6), .I7(i7), .I8(i8));
    
    initial begin
        e=0;
        #10 s=3'b000;   i=3'b000;
        #10 s=3'b001;   i=3'b001;
        #10 s=3'b010;   i=3'b010;
        #10 s=3'b011;   i=3'b011;
        #10 s=3'b100;   i=3'b100;
        #10 s=3'b101;   i=3'b101;
        #10 s=3'b110;   i=3'b110;
        #10 s=3'b111;   i=3'b111;
        
        #10
        e=1;
        #10 s=3'b000;   i=3'b000;
        #10 s=3'b001;   i=3'b001;
        #10 s=3'b010;   i=3'b010;
        #10 s=3'b011;   i=3'b011;
        #10 s=3'b100;   i=3'b100;
        #10 s=3'b101;   i=3'b101;
        #10 s=3'b110;   i=3'b110;
        #10 s=3'b111;   i=3'b111;
        #10
        $finish;
     end
     endmodule
        