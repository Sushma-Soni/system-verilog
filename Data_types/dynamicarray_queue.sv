// Code your testbench here
// or browse Examples
module test;
 
  bit dyn_ar[] ;
  bit qA [$];//queue
  bit qtem [$];// temperory queue
  bit qB [$];
  int n =0; int j,i;
  
  initial begin 
    
    forever begin
      $display($time,"n %d",n);
       if(qA.size()!=10 && qB.size()!=10)
         begin
      for(i=n;i<n+10;i=i+1)begin
        #5
        dyn_ar = new[i+1](dyn_ar);
       value(i);
      end
        j= n+10;
       qa();
       $display("n %d",n);
           for(j=n+10;j<n+20;j=j+1) begin
        #5
        dyn_ar = new[j+1](dyn_ar);
         value(j);
      end
    qb();
     n=n+20 ;
     end
    else begin
      $display($time," size %d & qA %p",qA.size(),qA);
      $display($time," size %d &qB %p",qB.size(),qB); 
      $finish();  end
  end  
  end
    

   function bit value(int n);
    if(dyn_ar[n-1]== 0)
      dyn_ar[n]= 1'b1;
    else
      dyn_ar[n]= 1'b0;
    $display($time,dyn_ar) ;
    endfunction
  
   task qa();  
     //#50
     for(int i=0;i<10; i++) begin qtem.push_back(dyn_ar[i]) ;  end
   // $display($time,"qtem %p",qtem) ;
     qA.push_back(qtem.pop_back());
     $display($time,"qA %p ",qA) ; 
   endtask
  
  task qb();
   // #50 
     for(int i=0;i<10; i++) begin qtem.push_back(dyn_ar[i]) ;  end
    qB.push_back(qtem.pop_front());
    $display($time,"qB %p",qB) ;
  endtask
  
//  always #10 clk =~clk;
endmodule

 
