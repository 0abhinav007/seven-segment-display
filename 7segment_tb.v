


module sevensegment_tb( );
reg s0,s1,s2,s3;
wire a,b,c,d,e,f,g;
sevensegment dut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.s3(s3),.s2(s2),.s1(s1),.s0(s0));
initial begin
#2
s3=1'b0;s2=1'b0;s1=1'b0;s0=1'b0;
#2
s3=1'b0;s2=1'b0;s1=1'b0;s0=1'b1;
#2
s3=1'b0;s2=1'b0;s1=1'b1;s0=1'b0;
#2
s3=1'b0;s2=1'b0;s1=1'b1;s0=1'b1;
#2
s3=1'b0;s2=1'b1;s1=1'b0;s0=1'b0;
#2
s3=1'b0;s2=1'b1;s1=1'b0;s0=1'b1;
#2
s3=1'b0;s2=1'b1;s1=1'b1;s0=1'b0;
#2
s3=1'b0;s2=1'b1;s1=1'b1;s0=1'b1;
#2
s3=1'b1;s2=1'b0;s1=1'b0;s0=1'b0;
#2
s3=1'b0;s2=1'b0;s1=1'b0;s0=1'b1;
#2
$stop;
end
endmodule
