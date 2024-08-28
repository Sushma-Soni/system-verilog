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
       $display("iteration %0d and array %0p",i,array);
     end
   $display("Reversed array %0p",array);
  end
endmodule
//---------------Output----------------
// Aug 28 04:33 2024
//          8
// iteration 0 and array '{9, 3, 4, 5, 6, 7, 8, 2} 
// iteration 1 and array '{9, 8, 4, 5, 6, 7, 3, 2} 
// iteration 2 and array '{9, 8, 7, 5, 6, 4, 3, 2} 
// iteration 3 and array '{9, 8, 7, 6, 5, 4, 3, 2} 
// Reversed array '{9, 8, 7, 6, 5, 4, 3, 2} 
//           V C S   S i m u l a t i o n   R e p o r t 
// Time: 5 ns
