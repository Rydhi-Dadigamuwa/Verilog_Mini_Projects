module Seq_tb();
  reg reset, clk, din; 
  wire dout;
  
  SeqDtect dut(.RESET(reset), .CLK(clk), .DIN(din), .DOUT(dout));
   
  always #5 clk = !clk; 

  initial begin
    
    $dumpfile("dump.vcd"); 
    $dumpvars;
 
    clk = 0; reset = 0; din = 1;
    
    #5 reset=1;
    #5 reset=0;
    
    #5 din = 0;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 din = 1;
    #5 din = 1;
    #5 din = 0;
    #5 din = 1;
    #5 $finish;
  end
endmodule
