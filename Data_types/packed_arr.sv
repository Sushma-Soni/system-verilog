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
