
module full_u_twohalf(a,b,c,sum,carry);
input a,b,c;
output sum,carry;
wire w1,w2,w3;
half_add f1(a,b,w1 ,w2);
half_add f2(w1,c,sum,w3);
or (carry,w2,w3);
endmodule
