//Derive odd no. within 10 to 30
/*
class odd_num;
  randc int val;
  
  constraint c1 {val inside {[10:30]};}
  
  function void post_randomize(); 
    if(!(val%2==0))
       $display("odd num =%d",val);
   // $display("Do not find odd in given range");
    
     
  endfunction
  
endclass

module odd_value();
  
  odd_num num;
  
  initial begin
    num =new();
    repeat(10)begin
      num.randomize();
    end
  end
endmodule 
*/
class odd_num;
  randc int val;
  
  constraint c1 {val inside {[10:30]};}
  constraint c2 {(val%2 != 0);}
  
endclass

module odd_value();
  
  odd_num num;
  
  initial begin
    num =new();
    repeat(10)begin
      num.randomize();
      $display("odd num =%d",num.val);
    end
  end
endmodule
