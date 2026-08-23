module mux_8gate(s,a,y);
input [2:0]s;
input [7:0]a;
output y;
wire [10:0]w;
not (w[0],s[0]);
not (w[1],s[1]);
not (w[2],s[2]);
and (w[3],w[2],w[1],w[0],a[0]);
and (w[4],w[2],w[1],s[0],a[1]);
and (w[5],w[2],s[1],w[0],a[2]);
and (w[6],w[2],s[1],s[0],a[3]);
and (w[7],s[2],w[1],w[0],a[4]);
and (w[8],s[2],w[1],s[0],a[5]);
and (w[9],s[2],s[1],w[0],a[6]);
and (w[10],s[2],s[1],s[0],a[7]);
or (y,w[3],w[4],w[5],w[6],w[7],w[8],w[9],w[10]);
endmodule 
