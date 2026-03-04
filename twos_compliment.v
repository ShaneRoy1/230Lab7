module twos_complement(
    input [7:0] A,
    output [7:0] Out
);
    wire c0;
    full_adder fullAdder0(
        .A(~A[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(Out[0]),
        .Cout(c0)
    );
    
    wire c1;
    full_adder fullAdder1(
        .A(~A[1]),
        .B(1'b0),
        .Cin(c0),
        .Y(Out[1]),
        .Cout(c1)
    );
    
    wire c2;
    full_adder fullAdder2(
        .A(~A[2]),
        .B(1'b0),
        .Cin(c1),
        .Y(Out[2]),
        .Cout(c2)
    );
    
    wire c3;
    full_adder fullAdder3(
        .A(~A[3]),
        .B(1'b0),
        .Cin(c2),
        .Y(Out[3]),
        .Cout(c3)
    );
    
    wire c4;
    full_adder fullAdder4(
        .A(~A[4]),
        .B(1'b0),
        .Cin(c3),
        .Y(Out[4]),
        .Cout(c4)
    );
    
    wire c5;
    full_adder fullAdder5(
        .A(~A[5]),
        .B(1'b0),
        .Cin(c4),
        .Y(Out[5]),
        .Cout(c5)
    );
    
    wire c6;
    full_adder fullAdder6(
        .A(~A[6]),
        .B(1'b0),
        .Cin(c5),
        .Y(Out[6]),
        .Cout(c6)
    );
    
    wire c7;
    full_adder fullAdder7(
        .A(~A[7]),
        .B(1'b0),
        .Cin(c6),
        .Y(Out[7]),
        .Cout(c7)
    );
    
endmodule