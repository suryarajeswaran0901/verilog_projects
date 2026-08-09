module demux_4tb;
reg d;
reg [1:0]s;
wire [3:0]y;
demux_4behavi uut (.d(d),.s(s),.y(y));
initial 
begin
    $dumpfile("demux4out.vcd");
    $dumpvars(0,demux_4tb);
    d=1'b1;
    s=2'b00;#10;
    s=2'b01;#10;
    s=2'b10;#10;
    s=2'b11;#10;
    $finish;
end
endmodule
