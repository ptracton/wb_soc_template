#! /usr/bin/env python3

"""
mem_to_bram.py

Converts a verilog mem file to init statements for 4 BRAMs arranged as a word

"""

import argparse
import os
import re
import sys

if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description='Split MEM file into BRAM init statements')
    
    parser.add_argument("-D", "--debug",
                        help="Debug this script",
                        action="store_true")
    parser.add_argument("--mem",
                        help="Which MEM file to use",
                        required=True,
                        action="store")
 
    args = parser.parse_args()
    if args.debug:
        print(args)

    try:
        mem_file = open(args.mem, "r")
        mem_file_lines = mem_file.readlines()
        mem_file.close()

        bram0_file = open("bram0.txt", "w")
        bram1_file = open("bram1.txt", "w")
        bram2_file = open("bram2.txt", "w")
        bram3_file = open("bram3.txt", "w")
        
    except:
        print("Failed to open or read %s" % args.mem)
        sys.exit(-1)

    address = 0
    init_number = 0
    bram0_init_string = "defparam testbench.dut.rom0.ram0.bank0.ram0.INIT_"
    bram1_init_string = "defparam testbench.dut.rom0.ram0.bank0.ram1.INIT_"
    bram2_init_string = "defparam testbench.dut.rom0.ram0.bank0.ram2.INIT_"
    bram3_init_string = "defparam testbench.dut.rom0.ram0.bank0.ram3.INIT_"
    index = 0
    bram0_init = []
    bram1_init = []
    bram2_init = []
    bram3_init = []
    
    for line in mem_file_lines[1:]:
        values = line.split(' ')
        address = int(values[0][1:], 16)
        for data in values[1:]:
            data_hex = int(data, 16)
            data_bytes = [hex(data_hex >> i & 0xff) for i in (24, 16, 8, 0)]
            #print("Address = 0x%08x Data = 0x%08x" % (address, data_hex))
            #print(data_bytes)
            address = address + 1
            #print(data_bytes[0][2:])
            bram3_init.append(data_bytes[0][2:])
            bram2_init.append(data_bytes[1][2:])
            bram1_init.append(data_bytes[2][2:])
            bram0_init.append(data_bytes[3][2:])
                                                
            index = index + 1
            if index % 32 == 0:
                bram0_init.reverse()
                bram1_init.reverse()
                bram2_init.reverse()
                bram3_init.reverse()
                b0= '_'.join(str(x) for x in bram0_init)
                b1= '_'.join(str(x) for x in bram1_init)
                b2= '_'.join(str(x) for x in bram2_init)
                b3= '_'.join(str(x) for x in bram3_init)

                
                #print(bram3_init_string+"%02x = 256'h%s;" % (init_number, b))
                bram0_file.write(bram0_init_string+"%02x = 256'h%s;\n" % (init_number, b0))
                bram1_file.write(bram1_init_string+"%02x = 256'h%s;\n" % (init_number, b1))
                bram2_file.write(bram2_init_string+"%02x = 256'h%s;\n" % (init_number, b2))
                bram3_file.write(bram3_init_string+"%02x = 256'h%s;\n" % (init_number, b3))
                
                bram0_init = []
                bram1_init = []
                bram2_init = []
                bram3_init = []
                
                init_number = init_number + 1
                index = 0
            
            
            #bram3_file.write(data_bytes[0][2:]+"\n")
            #bram2_file.write(data_bytes[1][2:]+"\n")
            #bram1_file.write(data_bytes[2][2:]+"\n")
            #bram0_file.write(data_bytes[3][2:]+"\n")
            
    bram0_file.close()
    bram1_file.close()
    bram2_file.close()
    bram3_file.close()
