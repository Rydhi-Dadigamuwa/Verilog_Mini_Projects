module upcount_tb();
  reg reset, clk;
  wire [3:0] count;
  
  upcount uut (.RESET(reset), .CLK(clk), .COUNT(count));
  
  always #5 clk =! clk;
  
  initial begin
    $dumpfile("upcount.vcd")
    $dumpvars;
    
    clk=0; reset=1;
    
    #15 reset=0;
    #150 reset=1;
    
    #40 $finish;
    
  end
endmodule
