module comparator_2bit (
    input [1:0] A,   
    input [1:0] B,   
    output A_greater, 
    output A_less,    
    output A_equal    );

assign A_greater = (A > B) ? 1'b1 : 1'b0;  // A greater than B
assign A_less = (A < B) ? 1'b1 : 1'b0;     // A less than B
assign A_equal = (A == B) ? 1'b1 : 1'b0;   // A equal to B

endmodule
