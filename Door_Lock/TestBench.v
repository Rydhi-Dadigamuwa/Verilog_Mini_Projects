module DoorLock_tb();
  reg clk, rst, press;
  wire m_cw, m_acw;
  
  DoorLock uut (.CLK(clk), .RST(rst), .PRESS(press), .M_CW(m_cw), .M_ACW(m_acw));
  
  always #5 clk = ~clk; // Corrected clock toggle
  
  initial begin
    $dumpfile("dump.vcd"); // Corrected syntax
    $dumpvars;
    
    clk = 0; rst = 0; press = 0;
    
    #10 rst = 0;
    #10 press = 1;
    #10 press = 0;
    #10 press = 0;
    #10 press = 1;
    #10 press = 1;
    #10 press = 0;
    #10 press = 1;
    #10 press = 0;
    #10 press = 1;
    $finish;
  end
endmodule