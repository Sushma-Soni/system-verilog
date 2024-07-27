// Write a program using dynamic array
// 1. array1: no. of elements should be between 30-40.
//2. sum of all elements should be <100 .
// 3. sum of all elements should be >100.

class dyn_arr;
   rand shortint unsigned array1[];
   rand shortint unsigned array2[];
   rand shortint unsigned array3[];
  
  constraint arr_size{ array1.size() == 10;
                      array2.size() == 20;
                      array3.size() == 20;
  }
  
  constraint c1 {foreach(array1[i])
    array1[i] inside {[30:40]};}
  
  function void display();
    $display("Size of array1=%d array2=%d array3=%d",array1.size(),array2.size(),array3.size());
    $display("ELEMENTS OF ARRAY ARE:");
    $display("array1: %0p\n",array1);
    $display("array2: %0p\n",array2);
    $display("array3: %0p\n",array3);
    $display("Sum of:array2=%d,array3=%d \n",array2.sum,array3.sum);
  endfunction
  
endclass

module dynm_arr();
  dyn_arr varb;
  
  initial begin  
    varb = new();
    $display("\n\n");
    
    varb.randomize() with{array2.sum <100;array3.sum>100;};
    varb.display();
    $display("\n\n");
  end   
endmodule
