# MonstersPYNQ
ECEn 490 Project Monsters, PYNQ Group. 
These files are ment to be used in andy's R2 project he emailed us.
blur3x3.vhd - current flur filter
part_gen.tcl - tcl script to generate .bit, use the part_bit, you will need to change the path of the fifo_generator_0 in the script
fifo_generator_0 - the fifos used
test.tcl - simple simulation of filter, creates 3x3 frame and pixel values increament
test.tcl - simple simulation of filter, creates 3x3 frame, all pixel values are FFFFFF