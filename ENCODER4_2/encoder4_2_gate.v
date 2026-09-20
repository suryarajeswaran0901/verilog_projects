module encoder4_2 (y,a);
input [3:0]a;
output [1:0]y;
or(y[0],a[1],a[3]);
or(y[1],a[2],a[3]);
endmodule
