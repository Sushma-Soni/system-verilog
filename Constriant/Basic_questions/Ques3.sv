// Write a constraint to generate 10 digit ph no. where first three digit should be '852'

class phone_num;
  
  rand int num[];
  constraint phone_num_size{(num.size ==10);}
  constraint  phone_num { foreach(num[i]){
    ((num[i]>0)&& (num[i]<10)); 
    if(i==0)  num[i]==8;                  
    else if(i==1)num[i]==5;
    else if (i==2)num[i]==2;} }
    
    function void display();
                         $write("Random ph no. is:\"");   
                         foreach(num[i])begin
                           $write("%0p",num[i]); 
                         end
                         $write("\"");
                         $write("\n");
    endfunction
                         
endclass

module PN();
  phone_num ph_h;
  
  initial begin
    ph_h = new();
    
    repeat(10)begin
      ph_h.randomize();
      ph_h.display();
    end
  end
  
endmodule
