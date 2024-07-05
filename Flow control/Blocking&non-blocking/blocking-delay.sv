module blocking;
  bit [7:0] a,b,c,d,e;
  
  initial begin
    a = 8'hab;
    $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    b = 8'hbc;
     $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
    #5 c = 8'hca;  // LHS assigned to RHS at 5ns
    // #5 ;
   $display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
   //#5 ;$display("[%t] a = %b; b = %b; c = %b",$time,a,b,c);
  end
  
  initial begin  
    #5 ;
     d = 8'hde;// LHS assigned to RHS at 5ns
    $display("[%t] d = %b; e = %b",$time,d,e);
     #5 
    e = 8'hef;//  LHS assigned to RHS at 10ns
    $display("[%t] c = %b; d = %b",$time,c,d);
     #1 ;
    $display("[%t] a = %b; b = %b; c = %b; d = %b; e = %b",$time,a,b,c,d,e);
   //  #5 ;
  end
endmodule
