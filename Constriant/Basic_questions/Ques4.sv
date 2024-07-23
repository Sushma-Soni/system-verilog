// Write a constraint to generate multiplies of power 2.
class multiple ;
   rand int num ;
  randc int i;
  constraint num_range{(num == 2**i);
                       ((i>0)&& (i<9));}
endclass

module tb;
  multiple m_h;
  
  initial begin
    m_h = new();
    repeat (10) begin 
      m_h.randomize();
      $display("Value =%d",m_h.num);
    end
    
  end
endmodule
