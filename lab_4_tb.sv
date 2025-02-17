`timescale 1ns / 1ps

module lab_4_tb;

    logic [1:0] a, b;

    logic red, green, blue;

    lab_4 uut (
        .a(a),
        .b(b),
        .red(red),
        .green(green),
        .blue(blue)
    );

    initial begin
        $display("Time | a1 a0 | b1 b0 | Red | Green | Blue");
     

        for (int i = 0; i < 4; i++) begin
            for (int j = 0; j < 4; j++) begin
                a = i; 
                b = j;  

                #10; 
                $display("%4t |  %b  %b  |  %b  %b  |  %b   |   %b    |  %b", 
                         $time, a[1], a[0], b[1], b[0], red, green, blue);
            end
        end

        $finish; 
    end

endmodule
