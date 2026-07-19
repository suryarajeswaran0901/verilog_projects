
module half_addtest;
  reg a,b;
  wire sum, carry;
  half_add uut (a,b,sum,carry);
  initial 
    begin
      $dumpfile("halfout.vcd");
      $dumpvars(0,half_addtest);
      a=0;
      b=0;
      #10
      a=0;b=1;
      #10
      a=1;b=0;
      #10
      a=1;b=1;
      #10
      $finish;
    end
endmodule
