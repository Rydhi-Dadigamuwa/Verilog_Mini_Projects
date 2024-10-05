//Mux4x1
module MUX4x1(
    input [3:0] A, B, C, D,
    input [1:0] S4,
    output [3:0] OUT4
);
    
  assign OUT4 = S4[1]? (S4[0]? D : C) : (S4[0]? B : A);
     
endmodule

//Mux2x1
module MUX2x1(
  input [3:0] E, F,
  input S2,
  output [3:0] OUT2
);
  
  assign OUT2 = S2 ? F : E;
    
endmodule

//Mux8x1 with Mux4x1 + Mux4x1 + Mux2x1
module MUX8x1(
  input [3:0] A1, A2, A3, A4, A5, A6, A7, A8,
  input [2:0] S, 
  output [3:0] OUT
);
  
  wire [3:0] n1, n2;  
  MUX4x1 M1 (.A(A1), .B(A2), .C(A3), .D(A4), .S4(S[1:0]), .OUT4(n1));
  MUX4x1 M2 (.A(A5), .B(A6), .C(A7), .D(A8), .S4(S[1:0]), .OUT4(n2));
  MUX2x1 M3 (.E(n1), .F(n2), .S2(S[2]), .OUT2(OUT)); 
endmodule