class generator;
  
  rand bit [3:0] a, b; ////////////rand or randc 
  randc bit [3:0] y;
  
   constraint data {
     !(a inside {[3:7]});// a should not lie inside value 3 to 7
     !(b inside {[5:9]});// b should not lie inside value 5 to 9
     (a<16);          }
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
