all:
	cpp -Iinclude -E -P -x assembler-with-cpp zynqmp-zcu102-rev10-adrv9371.dts > zynqmp-zcu102-rev10-adrv9371.tmp.dts
	./dtc -I dts -O dtb -o devicetree.dtb zynqmp-zcu102-rev10-adrv9371.tmp.dts

