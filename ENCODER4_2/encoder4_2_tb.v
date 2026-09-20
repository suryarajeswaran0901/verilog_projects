module encoder4_2_tb;
reg [3:0]a;
wire [1:0]y;
encoder4_beha uut (.a(a),.y(y));
initial begin
    $dumpfile("4encoderout.vcd");
    $dumpvars(0,encoder4_2_tb);
    a=4'b0001;#10;
    a=4'b0010;#10;
    a=4'b0100;#10;
    a=4'b1000;#10;
    $finish;
end
endmodule
