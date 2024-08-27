module tb;
  
  int array [0:5];
   int min;
  int min2;
   int max;
  int max2;
  
  initial begin
      array = '{4,7,8,9,6,2};
   min = array[0];
   min2 = array[0];
   max = array[0];
    max2 = array[0];;
    #10;    
    for(int i=0;i<6;i++) begin
      if(min >array[i])
      min= array[i];
    end
    $display("Min value %0d",min);
   
  #5
    for(int i=0;i<6;i++) begin
      if(array[i]!= min) begin
     //   $display(array[i]);
       if((array[i]<min2))
      min2= array[i];
       end 
     end
     $display("2nd Min value %0d",min2);
    
    #5  for(int i=0;i<6;i++) begin
      if(array[i]>max)
      max= array[i];
    end
    $display("Max value %0d ",max);
    
     for(int i=0;i<6;i++) begin
       if(array[i]!=max) begin
      if(array[i]>max2)
      max2= array[i];
    end
     end
    $display("2ndMax value %0d ",max2);
    
  end
  
endmodule
///-------------output---------------------------
//  Aug 27 10:22 2024
// Min value 2
// 2nd Min value 4
// Max value 9 
// 2ndMax value 8 
//           V C S   S i m u l a t i o n   R e p o r t 
// Time: 20 ns
