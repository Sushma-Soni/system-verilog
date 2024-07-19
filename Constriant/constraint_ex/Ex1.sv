
class generator;
  
  rand bit [3:0] a, b; ////////////rand or randc 
  bit [3:0] y;
  constraint data {(a>5);
                   (b>10); 
                   (b<50);}
endclass

module tb;
  
  generator gen ;
  
  initial begin
    gen= new();
    repeat(5)begin
    if(gen.randomize())
      $display("-----Randomized values---\n a=%d,\n b=%d \n y=%d",gen.a,gen.b,gen.y);
    else $display("-----Randomization failed-------");
    end
  end

endmodule
