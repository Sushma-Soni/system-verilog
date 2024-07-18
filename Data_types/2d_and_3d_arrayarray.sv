module tb();

int array[3][3][3] = '{'{'{1, 10, 100}, '{2, 20, 200}, '{3, 30, 300}},
                       '{'{4, 40, 400}, '{5, 50, 500}, '{6, 60, 600}},
                       '{'{7, 70, 700}, '{8, 80, 800}, '{9, 90, 900}}
                      };
int arr[6][2]; // Declaration
  int tempa[3];
   int tempb[3];
    int tempc[3];
  initial begin
    arr[0][0] = 1; // Assignment
arr[0][1] = 100;

arr[1][0] = 2;
arr[1][1] = 200;

arr[2][0] = 3;
arr[2][1] = 300;

arr[3][0] = 4;
arr[3][1] = 400;

arr[4][0] = 5;
arr[4][1] = 500;

arr[5][0] = 6;
arr[5][1] = 600;
    
  foreach (arr[i,j]) begin
      $display("arr[%0d][%0d] = %0d", i,j,arr[i][j]);
    end
    $display("2 dimen arr is ",arr);
    foreach (array[i,j,k]) begin
      $display("\narr[%0d][%0d][%0d] = %0d", i,j,k,arr[i][j][k]);
    end
    $display("Array is ",array);
    tempa = array[1][0];//2nd row 1st element
    tempb=array[1][1]; //2nd row 2nd element
    tempc=array[1][2]; //2nd row 3rd element
    
    $display("2nd row 1st elements of array=",tempa);
    $display("2nd row 2nd elements of array= ",tempb);
    $display("2nd row 3rd elements of array= ",tempc);
  end
endmodule
