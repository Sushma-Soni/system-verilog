class pattern;
  rand int a[];
  constraint size {a.size <15 & a.size >4;}
  constraint value{foreach(a[i]){
    if (i%2==0) a[i]==0;
    else a[i]== (i+1)/2 ;
  }}
endclass

module tb;
  pattern p_h;
  
  initial begin
    p_h = new();
    repeat(10) begin
      p_h.randomize();
      $display("value =%p",p_h.a);
    end
  end
endmodule
