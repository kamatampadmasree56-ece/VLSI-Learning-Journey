module not_gate_tb;

reg a;
wire y;

// Instantiate the NOT gate
not_gate uut (
    .a(a),
    .y(y)
);

initial begin
    a = 0;
    #10 a = 1;
    #10 $finish;
end

endmodule
