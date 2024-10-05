module upcount (input RESET, CLK, 
                output reg [3:0] COUNT);
  
  parameter S0 = 0,
  S1 = 1,
  S2 = 2,
  S3 = 3,
  S4 = 4,
  S5 = 5,
  S6 = 6,
  S7 = 7,
  S8 = 8,
  S9 = 9,
  S10 = 10;
  
  reg[3:0] STATE;
  
  
  always @(posedge CLK) begin
    if(RESET == 1)
      STATE <= 0;
    else begin
      case(STATE)
        S0: STATE <= S1;
        S1: STATE <= S2;
        S2: STATE <= S3;
        S3: STATE <= S4;
        S4: STATE <= S5;
        S5: STATE <= S6;
        S6: STATE <= S7;
        S7: STATE <= S8;
        S8: STATE <= S9;
        S9: STATE <= S10;
        S10: STATE <= S0;
        
        default STATE <= S0;
        
      endcase
    end
    COUNT <= STATE;
  end
endmodule
        