module xor_gate_tb;

reg a;
reg b;
wire y;

// Instantiate the XOR gate
xor_gate uut (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    #10 $finish;
end

endmodule
