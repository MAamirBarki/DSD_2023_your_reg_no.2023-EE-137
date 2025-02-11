`timescale 1ns/10ps
module me_tb();
logic a1;
logic b1;
logic c1;
logic x1;
logic y1;

localparam per=10;
me amir(
.a(a1),
.b(b1),
.c(c1),
.x(x1),
.y(y1)
);

initial 
begin
a1=0; b1=0; c1=0;
#per;
a1=0; b1=0; c1=1;
#per;
a1=0; b1=1; c1=0;
#per;
a1=0; b1=1; c1=1;
#per;
a1=1; b1=0; c1=0;
#per;
a1=1; b1=0; c1=1;
#per;
a1=1; b1=1; c1=0;
#per;
a1=1; b1=1; c1=1;
#per;
$stop;
end
initial
begin 
$monitor ("a=%b, b=%b, c=%b,x=%b, y=%b", a1, b1, c1, x1, y1);
end
endmodule
