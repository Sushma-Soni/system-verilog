/*
module packed_arr;
  bit [3:0][7:0] arr; // 4*8 bit 
  int i;
  initial begin
    arr = 32'hef89_abcd;// hex denooted in 4 bits
    $display("The content stored in data = %b",arr);
    foreach(arr[i])
      $display("The value of data[%d] = %b (%h)",i,arr[i],arr[i]);
  end
endmodule

*/

module arrays;
int array1 [2][4];
int array2 [0:5]; 
byte array3 [0:2][1:4];
 //Initializing Array:
  int array4 [0:5] ='{1:5, 3:2, default: 0};
  // same as ‘{0, 5, 0, 1, 0, 0} that is (1:5) at index 1 value=5 and (default: 0) that is at undefined index , values are 0 .

int a, b;
byte c;
int d; 
   int m= 5;
  initial begin
 //   Accessing Array
a= array1[1][3];
b= array2[4];
c= array3[1][2];
    d = (array4[1]*array4[3]);
    $display(a);  
    $display(b); 
    $display(c); 
    $display(d); 
  end
  initial begin
    foreach(array1[i]) begin
    foreach(array1[i][j]) 
      begin
        array1[i][j]= m;
      $display("array1[%0d][%0d]=%0d",i,j,array1[i][j]);
        m+=5; // m = m+2
      end
    end
  end
endmodule