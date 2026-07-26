module half_subdata (a,b,diff,bor);
input a,b;
output diff,bor;
assign diff=a^b;
assign bor = ~a&b;
endmodule
