module muxfour_data (s,y,a);
input [1:0]s;
input [3:0]a;
output y;
assign y=(~s[0]&~s[1]&a[0])|(~s[0]&s[1]&a[1])|(s[0]&~s[1]&a[2])|(s[0]&s[1]&a[3]);
endmodule
