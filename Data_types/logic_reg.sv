module flip_flop ( input logic din, clk, 
output logic dout);
always @ (posedge clk) 
dout<=din; //driving logic using procedural assignment 
endmodule