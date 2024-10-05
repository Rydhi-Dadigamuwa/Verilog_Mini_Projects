`timescale 1ns / 1ps


module Demux1x8(
    input [2:0] I,
    input [2:0] S,
    input E,
    output reg [2:0] I1, I2, I3, I4, I5, I6, I7, I8
    );
    
    always @(I or S or E) begin
        I1<=3'b000;     I2<=3'b000;
        I3<=3'b000;     I4<=3'b000;
        I5<=3'b000;     I6<=3'b000;
        I7<=3'b000;     I8<=3'b000;
        
    if(E==1) begin
        case (S) 
            3'b000: I1<=I;
            3'b001: I2<=I;
            3'b010: I3<=I;
            3'b011: I4<=I;
            3'b100: I5<=I;
            3'b101: I6<=I;
            3'b110: I7<=I;
            3'b111: I8<=I;
        endcase
    end
end        
endmodule
