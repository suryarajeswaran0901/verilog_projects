module full_addtest;
reg a,b,c;
wire sum,carry;
full_u_twohalf uut (a,b,c,sum,carry);
initial
begin
    $dumpfile("fullout.vcd");
    $dumpvars(0,full_addtest);
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
