module full_subtest;
reg a,b,c;
wire diff,bor;
full_subbeha uut (a,b,c,diff,bor);
initial
begin 
    $dumpfile("fullsubout.vcd");
    $dumpvars(0,full_subtest);
    {a,b,c}=3'b000;#10;
    {a,b,c}=3'b001;#10;
    {a,b,c}=3'b010;#10;
    {a,b,c}=3'b011;#10;
    {a,b,c}=3'b100;#10;
    {a,b,c}=3'b101;#10;
    {a,b,c}=3'b110;#10;
    {a,b,c}=3'b111;#10;
    $finish;
end
endmodule
