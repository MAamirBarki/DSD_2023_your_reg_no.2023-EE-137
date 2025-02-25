`timescale 1ns / 1ps

module lab_5(
    input logic [3:0] num,      
    input logic [2:0] s,     
    output logic [6:0] seg,    
    output logic [7:0] an       
);
    logic d = num[0];  
    logic c = num[1];
    logic b = num[2];
    logic a = num[3];
    assign seg[6]=((~c)|(d)) & ((~a)|d)&(b|d)&((~b)|(~c))&(a|(~c))&(a|((~b)|(~d)))&(b|((~a)|c));//a
    assign seg[5]= (a|b)&(b|c)&(b|d)&((~a)|(c|(~d)))&((a|c)|d)&(a|((~c)|(~d)));//b
    assign seg[4]=((~a)|b)&((~b)|(a))&((~d)|c)&(a|(~d))&(a|c);//c
    assign seg[3]= ((~a)|(c))&((~b)|c|(~d))&(((~a)|(b))|(~d))&((a)|b|(~c))&(((~b)|(~c))|d)&(a|b|d);//d
    assign seg[2]=((~c)|d)&((~a)|(~b))&(d|b)&((~a)|(~c));//e
    assign seg[1]=(c|d)&((~a)|b)&((~a)|(~c))&((~b)|(d))&(((a)|(~b))|c);//f
    assign seg[0]=((~a)|(b)) & ((~c)|d)&((~a)|(~d))&(b|(~c)) & ((a|(~b))|c);//g
    
    //anode
    
    assign an[7]= (~s[0]) | ((~s[1]) | (~s[2]));
    assign an[6]= (~s[0]) | ((~s[1]) | (s[2]));
    assign an[5]= (~s[0]) | ((s[1]) | (~s[2]));
    assign an[4]= (~s[0]) | ((s[1]) | (s[2]));
    assign an[3]= (s[0]) | ((~s[1]) | (~s[2]));
    assign an[2]= (s[0]) | ((~s[1]) | (s[2]));
    assign an[1]= (s[0]) | ((s[1]) | (~s[2]));
    assign an[0]= (s[0]) | ((s[1]) | (s[2]));

endmodule
