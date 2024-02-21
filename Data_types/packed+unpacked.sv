
module pac_unpac_arr();
  bit [3:0] array[2][4];// 2 row and 4 column and each location is of 4 bit
  
  initial begin
    foreach(array[i])begin
      foreach(array[i][j])begin
       // array[i][j]= $random ;
       // array[i][j]= $urandom ;
        array[i][j]= $urandom_range(5,15) ;
        $display("array[%0d][%0d]=%0d",i,j,array[i][j]);
      end
      $display("The contents are : %p",array); 
      //$display("array[1][2][0] = %d",array[1][2][0]);
  end
  end