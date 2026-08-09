module demux_4data(s,d,y);
input d;
input [1:0]s;
output [3:0]y;
assign y[0]=~s[0]&~s[1]&d;
assign y[1]=s[0]&~s[1]&d;
assign y[2]=~s[0]&s[1]&d;
assign y[3]=s[0]&s[1]&d;
endmodule
