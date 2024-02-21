module associative_array;
  //array declaration
  int a_array[int];  
  int index;
  int i= 0;
  initial begin
    //index= 0;
    //allocating array and assigning value to it 
    repeat(5) begin
      a_array[i] = i*2;
      i=i+4;
    end

    //num() –Associative array method
    $display("\tNumber of entries in a_array is %0d",a_array.num());
    $display("--- Associative array a_array entries and Values are ---");
    foreach(a_array[i]) $display("\ta_array[%0d] \t = %0d",i,a_array[i]);
    $display("--------------------------------------------------------");
    
    //first(var)-Associative array method
     a_array.first(index);
    $display("\First entry is \t a_array[%0d] = %0d",index,a_array[index]);

    //next(var)-Associative array method
     a_array.next(index);
    $display("\Next entry is \t a_array[%0d] = %0d",index,a_array[index]);
    
    //last(var)-Associative array method
    a_array.last(index);
    $display("\Last entry is \t a_array[%0d] = %0d",index,a_array[index]);
    
     //prev(var)-Associative array method
    a_array.prev(index);
    $display("\Prev entry is \t a_array[%0d] = %0d",index,a_array[index]);
    // index is variable , so these  first(),next(),last() and prev() assign the index address to the variable  
    
    //exists(index))-Associative array method
    $display("\t data exist atindex  8 ",a_array.exists(8));
    $display("\t data exist atindex  5 ",a_array.exists(5));
    
    $finish();
  end
endmodule