module half_subtest;
reg a,b;
wire diff,bor;
half_subbe uut (a,b,diff,bor);
initial begin
    $dumpfile("half_subout.vcd");
    $dumpvars(0,half_subtest);
    {a,b}=2'b00;#10;
    {a,b}=2'b01;#10;
    {a,b}=2'b10;#10;
    {a,b}=2'b11;#10;
    $finish;
end
endmodule
