class generator;
  
  rand bit [3:0] a, b; ////////////rand or randc 
  bit [4:0] y;
  
 extern constraint data; // declare constraint data with extern keyword
  extern function int sum(bit[3:0] a,b, bit [4:0]y=0); 
     // declare function of int type with it's name and reuired arguments.
     // extern function void sum; 
endclass

 // to access class properties use scoe resolution :- generator::data, generator::a
    constraint generator::data{(a<16 && a>0);
                               (b<16 && b>1); }
    
    function int generator::sum(bit[3:0]a,b,bit [4:0]y);
      generator::a=a; // mapping argument a with class property-a
      generator::b=b;
      generator::y=y;
      y=(a+b);
      return(y);
    endfunction
     
     
module tb;
  
  generator gen ;
  int result=0;
  initial begin
    gen= new();
    
    repeat(5)begin
      if(gen.randomize()) begin
      $display("-----Randomized values---\n a=%d,\n b=%d \n y=%d",gen.a,gen.b,gen.y);
      result= gen.sum(gen.a,gen.b);
        $display("result=%d",result); end
    else 
      $display("-----Randomization failed-------");
    end
    
  end

endmodule
