module full_sub_two (a,b,c,diff,bor);
input a,b,c;
output diff,bor;
wire [3:1]w;
half_sub f1 (a,b,w[1],w[2]);
half_sub f2 (w[1],c,diff,w[3]);
or (bor,w[2],w[3]);
endmodule
