
class generator;
  
  rand bit [4:0] a, b; ////////////rand or randc 
  randc bit [3:0] y;
  constraint data {(a inside {[5:15],[18:25]});
                   (b inside {[1:5],[10:15]}); 
                   (b>5); 
                   (a>10); }
endclass

module tb;
  
  generator gen ;
  
  initial begin
    gen= new();
    repeat(10)begin
    if(gen.randomize())
      $display("-----Randomized values---\n a=%d,\n b=%d \n y=%d",gen.a,gen.b,gen.y);
    else $display("-----Randomization failed-------");
    end
  end

endmodule
