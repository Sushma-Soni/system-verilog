////Constraint - divisible by 5.
class divisible_by_5;
  rand logic [7:0] num ;
  constraint c1{(num %5==0);}
  
endclass

module tb;
   divisible_by_5 d_h ;
  initial begin
    d_h =new();
    repeat(10) begin
      d_h.randomize();
      $display("Value = %d",d_h.num); end
  end
endmodule
