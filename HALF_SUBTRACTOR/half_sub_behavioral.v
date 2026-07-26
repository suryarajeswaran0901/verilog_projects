module half_subbe (a,b,diff,bor);
input a,b;
output reg diff,bor;
always @(a,b) begin
    case({a,b})
    2'b00:begin diff=0;bor=0;
    end
    2'b01:begin diff=1;bor=1;
    end
    2'b10:begin diff=1;bor=0;
    end
    2'b11:begin diff=0;bor=0;
    end
    endcase
end
endmodule
