import os
import sys
import fileinput


def convert_to_binary(N):
    binary = bin(N).replace('0b','')

    A = binary[::-1]

    while len(A) < 8:
        A += '0'

    binary = A[::-1]

    return list(binary)


old_A0 = "VA0 A0 gnd 0"
old_A1 = "VA1 A1 gnd 0"
old_A2 = "VA2 A2 gnd 0"
old_A3 = "VA3 A3 gnd 0"

old_B0 = "VB0 B0 gnd 0"
old_B1 = "VB1 B1 gnd 0"
old_B2 = "VB2 B2 gnd 0"
old_B3 = "VB3 B3 gnd 0"

for num in range(0, 256):
    A = convert_to_binary(num)

    f = open("4_bit_Multiplier_Pre_Layout_leakage.txt", "a") 

    file_name = "4_bit_Multiplier_Pre_Layout_leakage.cir"
    File = open(file_name, 'r+')

    new_A0 = "VA0 A0 gnd " + A[0]
    new_A1 = "VA1 A1 gnd " + A[1]
    new_A2 = "VA2 A2 gnd " + A[2]
    new_A3 = "VA3 A3 gnd " + A[3]

    new_B0 = "VB0 B0 gnd " + A[4]
    new_B1 = "VB1 B1 gnd " + A[5]
    new_B2 = "VB2 B2 gnd " + A[6]
    new_B3 = "VB3 B3 gnd " + A[7]

    s = "VA0 = "+ str(A[0]) + " VA1 = "+ str(A[1]) + " VA2 = "+ str(A[2]) + " VA3 = "+ str(A[3]) +"\nVB0 = "+ str(A[4]) + " VB1 = "+ str(A[5]) + " VB2 = "+ str(A[6]) + " VB3 = "+ str(A[7]) + "\n"
    f.write(s)
    f.close()


    for line in fileinput.input(file_name):
        File.write(line.replace(old_A0, new_A0))
    File.close()
   
    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_A1, new_A1))
    File.close()
    
    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_A2, new_A2))
    File.close()

    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_A3, new_A3))
    File.close()

    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_B0, new_B0))
    File.close()

    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_B1, new_B1))
    File.close()

    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_B2, new_B2))
    File.close()

    File = open(file_name, 'r+')
    for line in fileinput.input(file_name):
        File.write(line.replace(old_B3, new_B3))
    File.close()

    old_A0 = new_A0
    old_A1 = new_A1
    old_A2 = new_A2
    old_A3 = new_A3

    old_B0 = new_B0
    old_B1 = new_B1
    old_B2 = new_B2
    old_B3 = new_B3

    os.system("ngspice 4_bit_Multiplier_Pre_Layout_leakage.cir")

    f = open("4_bit_Multiplier_Pre_Layout_leakage.txt", "a") 
    f.write("\n")
    f.close()
