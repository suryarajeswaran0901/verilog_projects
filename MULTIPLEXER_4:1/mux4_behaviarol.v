module muxfour_behavi(s,a,y);
input [3:0]a;
input [1:0]s;
output reg y;
always @ (s,a)
begin
    case({s,a})
    2'b00:begin y=a[0]; end
    2'b01:begin y=a[1]; end
    2'b10:begin y=a[2]; end
    2'b11:begin y=a[3]; end
    endcase
end
endmodule
