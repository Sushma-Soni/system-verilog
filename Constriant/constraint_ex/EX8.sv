
class packet;
  rand bit [3:0] addr;

  constraint addr_range { addr dist { 2 := 3, 7 := 3, 10 := 4}; }
endclass

module constr_dist;
  initial begin
    packet pkt;
    pkt = new();
    $display("------------------------------------");
    repeat(10) begin
      pkt.randomize();
      $display("\taddr = %0d",pkt.addr);
    end
    $display("------------------------------------");
  end
endmodule

class packet;
  rand bit [3:0] addr_1;
  rand bit [3:0] addr_2;

  constraint addr_1_range {   addr_1 dist { 2 := 5, [10:12] := 8 }; }
  constraint addr_2_range {   addr_2 dist { 2 :/ 5, [10:12] :/ 8 }; }
endclass

module constr_dist;
  initial begin
    packet pkt;
    pkt = new();

    $display("------------------------------------");
    repeat(10) begin
      pkt.randomize();
      $display("\taddr_1 = %0d",pkt.addr_1);
    end
    $display("------------------------------------");
    $display("------------------------------------");
    repeat(10) begin
      pkt.randomize();
      $display("\taddr_2 = %0d",pkt.addr_2);
    end
    $display("------------------------------------");
  end
endmodule

