// verilog code for a 4 BIT MULTIPLIER using HA and FA

module HA(A, B, SUM, CARRY);

input A, B;
output SUM, CARRY;

assign SUM=A^B;
assign CARRY=(A&B);

endmodule


module FA(A, B, Cin, SUM, CARRY);

input A, B, Cin;
output SUM, CARRY;

assign SUM=(A^B^Cin);
assign CARRY=((A&B)|(A&Cin)|(B&Cin));

endmodule


module Four_Bit_Multiplier(A0, A1, A2, A3, B0, B1, B2, B3, PRODUCT0, PRODUCT1, PRODUCT2, PRODUCT3, PRODUCT4, PRODUCT5, PRODUCT6, PRODUCT7);


input A0, A1, A2, A3;
input B0, B1, B2, B3;
output PRODUCT0, PRODUCT1, PRODUCT2, PRODUCT3, PRODUCT4, PRODUCT5, PRODUCT6, PRODUCT7;

wire HA_a1, HA_b1, HA_a2, HA_b2, HA_a3, HA_b3, HA_a4, HA_b4;
wire FA_a1, FA_b1, FA_c1, FA_a2, FA_b2, FA_c2, FA_a3, FA_b3, FA_c3, FA_a4, FA_b4, FA_c4, FA_a5, FA_b5, FA_c5, FA_a6, FA_b6, FA_c6, FA_a7, FA_b7, FA_c7, FA_a8, FA_b8, FA_c8;

and(PRODUCT0, A0, B0);
and(HA_a1, A0, B1);
and(HA_b1, A1, B0);
and(FA_a1, A0, B2);
and(HA_a2, A2, B0);
and(HA_b2, A1, B1);
and(FA_a3, A1, B2);
and(FA_b2, A0, B3);
and(HA_a4, A3, B0);
and(HA_b4, A2, B1);
and(FA_a7, A2, B2);
and(FA_b7, A3, B1);
and(FA_b4, A1, B3);
and(FA_a8, A2, B3);
and(FA_b8, A3, B2);
and(FA_b6, A3, B3);

HA HA1(HA_a1, HA_b1, PRODUCT1, FA_c1);
HA HA2(HA_a2, HA_b2, FA_b1, FA_c3);
HA HA3(HA_a3, HA_b3, PRODUCT4, FA_c5);
HA HA4(HA_a4, HA_b4, FA_b3, FA_c7);

FA FA1(FA_a1, FA_b1, FA_c1, PRODUCT2, FA_c2);
FA FA2(FA_a2, FA_b2, FA_c2, PRODUCT3, HA_a3);
FA FA3(FA_a3, FA_b3, FA_c3, FA_a2, FA_c4);
FA FA4(FA_a4, FA_b4, FA_c4, HA_b3, FA_a5);
FA FA5(FA_a5, FA_b5, FA_c5, PRODUCT5, FA_c6);
FA FA6(FA_a6, FA_b6, FA_c6, PRODUCT6, PRODUCT7);
FA FA7(FA_a7, FA_b7, FA_c7, FA_a4, FA_c8);
FA FA8(FA_a8, FA_b8, FA_c8, FA_b5, FA_a6);


endmodule



