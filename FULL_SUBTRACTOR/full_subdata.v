module full_subdata (a,b,c,diff,bor);
input a,b,c;
output diff,bor;
assign diff = a ^ b ^ c;
assign bor = (~b&c)|(~(b^c)&a);
endmodule
