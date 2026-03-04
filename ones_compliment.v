module ones_complement(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Out
);
    //  initial add
    
    wire o0;
    wire c1;
    full_adder fullAdder0(
        .A(A[0]),
        .B(B[0]),
        .Cin(1'b0),
        .Y(o0),
        .Cout(c1)
    );
    
    wire o1;
    wire c2;
    full_adder fullAdder1(
        .A(A[1]),
        .B(B[1]),
        .Cin(c1),
        .Y(o1),
        .Cout(c2)
    );
    
    wire o2;
    wire c3;
    full_adder fullAdder2(
        .A(A[2]),
        .B(B[2]),
        .Cin(c2),
        .Y(o2),
        .Cout(c3)
    );
    
    wire o3;
    wire c4;
    full_adder fullAdder3(
        .A(A[3]),
        .B(B[3]),
        .Cin(c3),
        .Y(o3),
        .Cout(c4)
    );
    
    // wrap-around carry add
    
    wire c_0;
    full_adder carryAdder0(
        .A(o0),
        .B(1'b0),
        .Cin(c4),
        .Y(Out[0]),
        .Cout(c_0)
    );
    
    wire c_1;
    full_adder carryAdder1(
        .A(o1),
        .B(1'b0),
        .Cin(c_0),
        .Y(Out[1]),
        .Cout(c_1)
    );
    
    wire c_2;
    full_adder carryAdder2(
        .A(o2),
        .B(1'b0),
        .Cin(c_1),
        .Y(Out[2]),
        .Cout(c_2)
    );
    
    wire c_3;
    full_adder carryAdder3(
        .A(o3),
        .B(1'b0),
        .Cin(c_2),
        .Y(Out[3]),
        .Cout(c_3)
    );
    
endmodule
