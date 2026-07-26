module half_sub (a,b,diff,bor);
input a,b;
output diff,bor;
wire w1;
not (w1,a);
xor (diff,a,b);
and (bor,w1,b);
endmodule
