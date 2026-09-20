module encoder4_beha(a,y);
input [3:0]a;
output reg [1:0]y;
always @ (a)
begin 
    case(a)
    4'b0001:begin y=2'b00; end
    4'b0010:begin y=2'b01; end
    4'b0100:begin y=2'b10; end
    4'b1000:begin y=2'b11; end
    endcase
end
endmodule
