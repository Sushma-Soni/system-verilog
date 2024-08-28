// Reverse a given Array
module tb;
  int array[];
  int n;
  int temp;
  
  initial begin
    array = '{2,3,4,5,6,7,8,9};
    n= array.size();
    $display(n);
  end
  
 initial begin
  #5 
   for(int i=0;i<n/2;i++) 
     begin
       temp =array[i];
     array[i] = array[n-1-i]; 
     array[n-1-i]= temp; 
       $display("iteration i and array %0p",i,array);
     end
   $display("Reversed array %0p",array);
  end
endmodule
