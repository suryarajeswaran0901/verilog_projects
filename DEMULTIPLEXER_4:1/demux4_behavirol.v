module demux_4behavi(d,s,y);
input d;
input [1:0]s;
output reg [3:0]y;
always @ (d,s)
begin
    case ({s,d})
    2'b00:begin y[0]=d; end
    2'b01:begin y[1]=d; end
    2'b10:begin y[2]=d; end
    2'b11:begin y[3]=d; end
    endcase
end
endmodule
