
module example1;
int a;
int unsigned b; //unsigned integer
bit signed [7:0] c; //same as byte
  shortint d;// 16 bit, default value =0
  longint e;// 64 bit ,default value =0
  byte  h; // 8 bit,default value =0
initial
begin
a=-32'd127;
b=32'b1; //SV offers un-sized literal to fill all
c=-8'b1; // locations with given number 
d = 'd6500;
  e= 'd198765;
  h ='d 122;
  $display("value of a = %0d,b= %0d,c=%0b,d= %0d,e=%0d,h=%0d",a,b,c,d,e,h);
end
endmodule