module muxfour_gate (s,a,y);
input [1:0]s;
input [3:0]a;
output y;
wire [5:0]w;
not g1 (w[0],s[0]);
not g2 (w[1],s[1]);
and g3 (w[2],w[0],w[1],a[0]);
and g4 (w[3],w[0],s[1],a[1]);
and g5 (w[4],s[0],w[1],a[2]);
and g6 (w[5],s[0],s[1],a[3]);
or g7 (y,w[2],w[3],w[4],w[5]);
endmodule
