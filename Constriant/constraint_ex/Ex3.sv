class generator;
  
  rand bit [4:0] a, b; ////////////rand or randc 
  randc bit [3:0] y;
  
   constraint data {
     (a inside {[3:7],[15:30]});// a should lie inside mentioned values
     (b inside {[5:9],[12:25]});// b should lie inside mentioned values
     (a<10); 
     (b>6); 
   }
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
