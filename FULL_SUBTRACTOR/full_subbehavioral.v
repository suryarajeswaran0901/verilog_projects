module full_subbeha (a,b,c,diff,bor);
input a,b,c;
output reg diff,bor;
always @(a,b,c)
begin 
    case ({a,b,c})
    3'b000:begin diff=0;bor=0;end
    3'b001:begin diff=1;bor=1;end
    3'b010:begin diff=1;bor=0;end
    3'b011:begin diff=0;bor=1;end
    3'b100:begin diff=1;bor=0;end
    3'b101:begin diff=0;bor=1;end
    3'b110:begin diff=0;bor=0;end
    3'b111:begin diff=1;bor=0;end
    endcase
end
endmodule
