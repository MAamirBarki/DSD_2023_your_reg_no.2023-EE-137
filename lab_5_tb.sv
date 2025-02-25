`timescale 1ns / 1ps

module lab_5_tb;

    logic [3:0] num;
    logic [2:0] s;

    logic [6:0] seg;
    logic [7:0] an;

    lab_5 uut (
        .num(num),
        .s(s),
        .seg(seg),
        .an(an)
    );

    initial begin
        num = 4'b0000;
        s = 3'b000;

        $monitor("Time=%0t num=%b s=%b seg=%b an=%b", $time, num, s, seg, an);

        #10 num = 4'b0001; s = 3'b001;
        #10 num = 4'b0010; s = 3'b010;
        #10 num = 4'b0011; s = 3'b011;
        #10 num = 4'b0100; s = 3'b100;
        #10 num = 4'b0101; s = 3'b101;
        #10 num = 4'b0110; s = 3'b110;
        #10 num = 4'b0111; s = 3'b111;
        #10 num = 4'b1000; s = 3'b000;
        #10 num = 4'b1001; s = 3'b001;

        #10 $finish;
    end

endmodule
