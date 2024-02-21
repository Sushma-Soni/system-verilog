module datatypes;
  
  logic [2:0][3:0]a;
  logic b;// 1 bit data and default value = x
  bit[1:0]c;
  bit d;
  // assign a = 3'habf;
    assign d= 3'b101;
    assign b= 3'hab;
  // assign c= 4;
    
 initial begin  
  $display("Default value of logic a= %0h",a);
  $display("Default value of logic c= %0h",c);
 end
  
  initial begin
  $display(" The value of logic a= %0h",a);
   $display(" The value of logic b= %0h",b);
    $display(" The value of logic c= %0b",c);
    $display(" The value of logic d= %0b",d);  
  end
  
endmodule