//0111 Detector
module SeqDtect(
  input CLK, 
  input DIN,
  input RESET,
  output reg DOUT 
);
 
  parameter [2:0] 
    S0 = 0,
    S1 = 1,
    S2 = 2,
    S3 = 3,
    S4 = 4;
  
  reg [2:0] STATE;
  
  always @(posedge CLK or negedge CLK) begin
    if (RESET==1) begin
      	DOUT<=0;
       STATE <= S0;
    end
    else begin
      case (STATE)
        S0: begin
          DOUT <= 0;
          if (DIN == 0)
            STATE <= S1;
          else
            STATE <= S0;
        end
        
        S1: begin
          DOUT <= 0;
          if (DIN == 1)
            STATE <= S2;
          else
            STATE <= S1;
        end
        
        S2: begin
          DOUT <= 0;
          if (DIN == 1)
            STATE <= S3;
          else
            STATE <= S1;
        end
        
        S3: begin
          DOUT <= 0;
          if (DIN == 1)
            STATE <= S4;
          else
            STATE <= S1;
        end
        
        S4: begin
          DOUT <= 1; 
          if (DIN == 1)
            STATE <= S0;
          else
            STATE <= S1;
        end
      endcase
    end
  end
endmodule
