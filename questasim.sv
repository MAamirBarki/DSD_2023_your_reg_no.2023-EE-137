module me(
input wire a,
input wire b,
input wire c,
input wire x,
input wire y
);
assign x=!c^(a|b);
assign y=(a|b)&(~(a&b)^(a|b));
endmodule
