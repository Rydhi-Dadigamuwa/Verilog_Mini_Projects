module tb_nonlinear_lut;

reg [3:0] in; // 4-bit input nibble
wire [3:0] out; // 4-bit nonlinear output

nonlinear_lut uut (
    .in(in),
    .out(out)
);

initial begin
  
  $dumpfile("dump.vcd"); 
  $dumpvars;
  $monitor("Time = %0t | Input = %b | Output = %b", $time, in, out);

    in = 4'b0000; #10;
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0011; #10;
    in = 4'b0100; #10;
    in = 4'b0101; #10;
    in = 4'b0110; #10;
    in = 4'b0111; #10;
    in = 4'b1000; #10;
    in = 4'b1001; #10;
    in = 4'b1010; #10;
    in = 4'b1011; #10;
    in = 4'b1100; #10;
    in = 4'b1101; #10;
    in = 4'b1110; #10;
    in = 4'b1111; #10;

    $stop; 
end

endmodule
