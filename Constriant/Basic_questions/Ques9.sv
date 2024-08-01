class odd_num;
  randc int num ;
  constraint range {num inside {[10:30]};}
  constraint numtype {((num%2)!=0);}
  
  function void display();
    $display("odd value within range :%d",num);
  endfunction
  
endclass

module tb;
  odd_num val;
  initial begin
    val= new();
    repeat(10) begin
      val.randomize();
       val.display();
     // $display("odd values are :%d",val.num);
    end
  end
endmodule
