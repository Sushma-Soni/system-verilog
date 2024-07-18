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

module associative_array_example2;
     int index;
  typedef enum {TRANS, RECEIVE, REPEATER} tr_type;
  bit [7:0] array_enum [tr_type];
  bit [7:0] array_int [int];
  tr_type tr_name;
  initial begin
    
    array_enum[TRANS] = 10;
    array_enum[RECEIVE] = 20;
    array_enum[REPEATER] = 30;
    
    foreach (array_enum[i]) $display("array_enum[%s] = %0d", i.name(), array_enum[i]);
    
    array_int[5] = 2;
    array_int[10] = 4;
    array_int[7] = 6;
    index=7;
    array_int.next(index); // Next index of after 7th
    $display("Next index after 7th index is= %0d", index);
     index=10;
    array_int.prev(index); // previous index of before 10th
    $display("Previous index before 10th index is= %0d", index);
    
    foreach (array_int[j]) $display("array_int[%0d] = %0d", j, array_int[j]);
    
    array_enum.first(tr_name);
    $display("1st index of array_enum = %s",tr_name) ;
    
     array_enum.last(tr_name);
    $display("last index of array_enum = %s",tr_name) ;
    
    array_enum.prev(tr_name);
    $display("prev index before REPEATER of array_enum = %s",tr_name) ;
  end 
  
endmodule
