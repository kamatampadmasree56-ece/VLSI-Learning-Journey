module dff_tb;

reg clk;
reg d;
wire q;

dff uut (
    .clk(clk),
    .d(d),
    .q(q)
);

always #5 clk = ~clk;

initial begin
    clk = 0;
    d = 0;

    #10 d = 1;
    #10 d = 0;
    #10 d = 1;
    #10 $finish;
end

endmodule
