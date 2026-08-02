module full_sub (a,b,c,diff,bor);
input a,b,c;
output diff,bor;
wire [4:0]w;
not g1 (w[0],b);
xor g2 (w[1],b,c);
xor g3 (diff,w[1],a);
not g4 (w[2],w[1]);
and g5 (w[3],w[2],a);
and g6 (w[4],w[0],c);
or g7 (bor,w[4],w[3]);
endmodule
