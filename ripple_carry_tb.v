
`timescale 1ns/1ps

module ripple_carry_adder_4bit_tb;
    reg  [3:0] a;
    reg  [3:0] b;
    reg        cin;
    wire [3:0] sum;
    wire       cout;

    ripple_carry DUT (a,b,cin,sum,cout);
    initial begin
    $monitor();
        cin = 0; a = 4'b0000; b = 4'b0000; #10 
        a = 4'b0001; b = 4'b0010; #10 
        a = 4'b0101; b = 4'b0011; #10 
        a = 4'b1111; b = 4'b0001; #10 
        cin = 1;     a = 4'b1010; b = 4'b0101; #10 
        a = 4'b1111; b = 4'b1111; #20    
        $finish;
    end
endmodule
