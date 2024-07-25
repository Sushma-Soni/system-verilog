// write a constraint for 16 bit variable such that no consecutive ones should be generated
/*
class variable;
  rand bit [15:0] value ;
  constraint C1 { (value >0 );}
  
  function void post_randomize();
    
    for(int i=0;i<16;i++)begin
    if(value[i]==0) value[i+1]=1;
    else value[i+1]=0;
    end 
  endfunction
endclass

module tb;
  variable num ;
  initial begin
    num =new();
    repeat(10) begin
      num.randomize();
      $display("Value = %b",num.value); end
  end
endmodule
*/

class variable;
  rand bit [15:0] value ;
  constraint C1 { foreach(value[i]){
    if(value[i]==1 && i<15)
      value[i+1]==0; }}  
endclass
module tb;
  variable num ;
  initial begin
    num =new();
    repeat(10) begin
      num.randomize();
      $display("Value = %b (%d)",num.value,num.value); end
  end
endmodule
