
module tb;
  
  function int sum( int a, int b);
    return a+b;
  endfunction
  
   function int Prod( int a, int b);
    return a*b;
  endfunction
  
   function int minus( int a, int b);
    return a-b;
  endfunction
  
  initial begin
    int num1, num2, add,sub,prod;
    num1 = 6;
    num2 = 7;
    add = sum( num1, num2 );
    sub = minus( num1, num2 );
    prod = Prod( num1, num2 );
    $display("addition %d", add );
    $display("Product %d", prod );
    $display("subtraction %d", sub);
  end
  
endmodule
