module amirbarki(
input wire  a,b,c,
output wire  x,y
    );
   wire not_c, or_ab, nand_ab, and1_out, and2_out, and3_out ; 
    assign not_c = ~c;
    assign or_ab = a | b;
    assign nand_ab = ~(a&b);
    
    assign and1_out = nand_ab ^ or_ab;
    assign and2_out = not_c ^ or_ab;
    assign and3_out = or_ab & and1_out;
    
    assign x = and2_out;
    assign y = and3_out;

endmodule
