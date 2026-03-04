module top(
    input [9:0] sw,
    output [13:0] led
);

    half_sub halfSubModule(
        .A(sw[0]),
        .B(sw[1]),
        .Y(led[0]),
        .Borrow(led[1])
    ); 
    
    ones_complement onesCompModule(
        .A(sw[5:2]),
        .B(sw[9:6]),
        .Out(led[5:2])
    );
    
    twos_complement twosCompModule(
        .A(sw[9:2]),
        .Out(led[13:6])
    );
    
endmodule

module full_adder(
    input A,B,Cin,
    output Y,Cout
);

    assign Y=A^B^Cin;
    assign Cout=(B&Cin)|(A&Cin)|(A&B);

endmodule