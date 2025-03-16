
module fulladder(
    input a,b,cin,
    output sum,cout
    );
    assign sum=a^b^cin;
    assign cout=(a&b)|(b&cin)|(a&cin);
endmodule

module ripple_carry(a,b,cin,sum,c3);
    input [3:0]a;
    input [3:0]b;
    input cin;
    output c3;
    output [3:0]sum;
    wire c0,c1,c2,c3;
    
    fulladder f0(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.cout(c0));
    fulladder f1(.a(a[1]),.b(b[1]),.cin(c0),.sum(sum[1]),.cout(c1));
    fulladder f2(.a(a[2]),.b(b[2]),.cin(c1),.sum(sum[2]),.cout(c2));
    fulladder f3(.a(a[3]),.b(b[3]),.cin(c2),.sum(sum[3]),.cout(c3));
    
       
       
       
endmodule
