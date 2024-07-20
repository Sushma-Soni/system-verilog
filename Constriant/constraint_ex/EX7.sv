// Code your testbench here
// or browse Examples
//pre-randomize
//post-randomize
 
 
class generator;
  
  randc bit [3:0] a,b; 
  bit [3:0] y;
  
  int min;
  int max;
  
  function new(input int min,input int max);
    this.min = min;
    this.max = max;
  endfunction
  

  function void pre_randomize();
    $display("----Randomization of a and b between given range value----");
  endfunction  
   
  constraint data {
    a inside {[min:max]};
    b inside {[min:max]};
  }
  
  constraint c1{(max>min);}
  
  function void post_randomize();
    $display("Value of a :%0d and b: %0d", a,b);
  endfunction 
  
endclass

module tb;
  
//  int i =0;
  generator gen;
  
  initial begin
   //  gen = new(9,2);// min>max would give error
    gen = new(2,10);
 
    for(int i = 0; i<8;i++)begin
   //  gen.pre_randomize(3,8);
      gen.randomize();
      #10;
    end
    
  end
  
  
endmodule
