class value;
  rand bit [3:0]array[];// dynamic array
  constraint size { array.size inside{[5:10]};
                   foreach(array[i]){
                     if(i>0)
                       array[i]>array[i-1];}}
                   
                   
 function void display();
                   $display("===================================");
                   $display("Size of array %0d",array.size);
                   foreach(array[i]) $display("Value of array[%0d]=%0p",i,array[i]);
                   $display("===================================");
                   
  endfunction 
endclass

module ascending ;
  value v_h;
  
  initial begin
    v_h = new();
    repeat (5) begin
      v_h.randomize ;
      v_h.display();
    end
  end
  
endmodule
