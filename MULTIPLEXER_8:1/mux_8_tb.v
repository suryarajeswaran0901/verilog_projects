module mux8_tb ;
reg [2:0]s;
reg [7:0]a;
wire y;
mux_8u2 uut (.s(s),.a(a),.y(y));
initial begin 
    $dumpfile("8muxoutbe.vcd");
    $dumpvars(0,mux8_tb);
    {a}=8'b10101010;
    {s}=3'b000;#10;
    {s}=3'b001;#10;
    {s}=3'b010;#10;
    {s}=3'b011;#10;
    {s}=3'b100;#10;
    {s}=3'b101;#10;
    {s}=3'b110;#10;
    {s}=3'b111;#10;
end
endmodule
