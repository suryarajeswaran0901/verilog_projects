module muxfour_tb;
reg [1:0]s;
reg [3:0]a;
wire y;
muxfour_behavi uut (.s(s),.a(a),.y(y));
initial begin
    $dumpfile("muxfourout.vcd");
    $dumpvars(0,muxfour_tb);
    a[0]=1'b1;
    a[1]=1'b0;
    a[2]=1'b1;
    a[3]=1'b0;
    {s}=2'b00;#10;
    {s}=2'b01;#10;
    {s}=2'b10;#10;
    {s}=2'b11;#10;
    $finish;
end
endmodule
