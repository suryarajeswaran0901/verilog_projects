module mux_8data (y,a,s);
input [2:0]s;
input [7:0]a;
output y;
assign y=(~s[2]&~s[1]&~s[0]&a[0])|(~s[2]&~s[1]&s[0]&a[1])|(~s[2]&s[1]&~s[0]&a[2])|(~s[2]&s[1]&s[0]&a[3])|(s[2]&~s[1]&~s[0]&a[4])|(s[2]&~s[1]&s[0]&a[5])|(s[2]&s[1]&~s[0]&a[6])|(s[2]&s[1]&s[0]&a[7]);
endmodule 
