all:
	bmp2bin -q icon.bmp icon.bin
	mko2x -n "F200(b) U-boot 4.0.2" -o uboot_f200b_4.0.2.o2x -s gp2xboot_f200b_4.0.img 0x3e00000 -i icon.bin
	mko2x -n "F200 U-boot 4.0.0" -o uboot_f200_4.0.0.o2x -s gp2xboot_f200_4.0.img 0x3e00000 -i icon.bin
	mko2x -n "F100 U-boot 4.0.0" -o uboot_f100_4.0.0.o2x -s gp2xboot_f100_4.0.img 0x3e00000 -i icon.bin
	mko2x -n "F100 U-boot 2.0" -o uboot_f100_2.0.o2x -s gp2xboot_f100_2.0.img 0x3e00000 -i icon.bin

clean:
	rm -f *.o2x icon.bin
