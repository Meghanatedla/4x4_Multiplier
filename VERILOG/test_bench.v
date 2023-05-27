//Test Bench for checking the functionality of 4_bit_Multiplier.v

`timescale 1ns/10ps

module test_bench();

reg A0;
reg A1;
reg A2;
reg A3;
reg B0;
reg B1;
reg B2;
reg B3;
wire PRODUCT0;
wire PRODUCT1;
wire PRODUCT2;
wire PRODUCT3;
wire PRODUCT4;
wire PRODUCT5;
wire PRODUCT6;
wire PRODUCT7;

Four_Bit_Multiplier UUT (A0, A1, A2, A3, B0, B1, B2, B3, PRODUCT0, PRODUCT1, PRODUCT2, PRODUCT3, PRODUCT4, PRODUCT5, PRODUCT6, PRODUCT7);

integer i;
initial 
    begin

        $dumpfile("test_bench.vcd");
        $dumpvars(0, test_bench);

        A0=0;
        A1=0;
        A2=0;
        A3=0;

        B0=0;
        B1=0;
        B2=0;
        B3=0;    

    end

initial
    begin

        for(i = 1; i < 256; i = i+1) 
        begin

            #1
            {B3, B2, B1, B0, A3, A2, A1, A0} = i;

        end


    end

always @(*)
$display("Time = %0t \n A0 = %b \t A1 = %b \t A2 = %b \t A3 = %b \n B0 = %b \t B1 = %b \t B2 = %b \t B3 = %b", $time, A0,A1,A2,A3,B0,B1,B2,B3);


endmodule