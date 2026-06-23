module full_adder_tb;

reg a, b, Cin;
wire sum, Cout;

full_adder uut (
    .a(a),
    .b(b),
    .Cin(Cin),
    .sum(sum),
    .Cout(Cout)
);

initial begin
    a=0; b=0; Cin=0;
    #10 a=0; b=0; Cin=1;
    #10 a=0; b=1; Cin=0;
    #10 a=0; b=1; Cin=1;
    #10 a=1; b=0; Cin=0;
    #10 a=1; b=0; Cin=1;
    #10 a=1; b=1; Cin=0;
    #10 a=1; b=1; Cin=1;
    #10 $finish;
end

endmodule
