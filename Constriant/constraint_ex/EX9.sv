class generator;
  
  randc bit [3:0] raddr, waddr;
  rand bit wr; ///write to mem
  rand bit en; ///output enable
  
  constraint wr_c {
    wr dist {0:= 50, 1 := 50};
  }
  constraint en_c {
    en dist {1:= 50, 0 := 50};
  }  
  constraint wr_oe_c {
    ( wr == 1) <-> (en == 0); 
  }
  
 // constraint addr{{raddr>1};{waddr<15};}
  constraint write_read {
    
    if(wr == 1)
    {
      waddr inside {[11:15]};
      raddr == 0;
    }
      else
      {
      waddr == 0;
      raddr inside {[11:15]};  
      }     
  }
        
endclass
 
module tb;
  
  generator g;
  
  initial begin
    g = new();
    
    for (int i = 0; i<10 ; i++) begin
      assert(g.randomize()) else $display("Randomization Failed");
      $display("wr %b en %b",g.wr,g.en);
      $display("raddr %d waddr %d",g.raddr,g.waddr);
      end
    
  end
  
endmodule
