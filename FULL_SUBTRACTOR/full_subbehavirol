module full_subbeha (a,b,c,diff,bor);
input a,b,c;
output diff,bor;
always @(a,b,c)
begin 
    case ({a,b,c})
    3'000:begin diff=0;bor=0;end
    3'001:begin diff=1;bor=1;end
    3'010:begin diff=1;bor=0;end
    3'011:begin diff=0;bor=1;end
    3'100:begin diff=1;bor=0;end
    3'101:begin diff=0;bor=1;end
    3'110:begin diff=0;bor=0;end
    3'111:begin diff=1;bor=0;end
    endcase
end
endmodule
