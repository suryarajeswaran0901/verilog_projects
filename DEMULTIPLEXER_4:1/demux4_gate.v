module demux_4gate(d,s,y);
input d;
input [1:0]s;
output [3:0]y;
wire [1:0]w;
not g1 (w[0],s[0]);
not g2 (w[1],s[1]);
and g3 (y[0],w[0],w[1],d);
and g4 (y[1],s[0],w[1],d);
and g5 (y[2],w[0],s[1],d);
and g6 (y[3],s[0],s[1],d);
endmodule 
