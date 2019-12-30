all: rauv2

rauv2:
	cpp -Iinclude -E -P -x assembler-with-cpp zynqmp-zcu102-revA.dts > zynqmp-zcu102-revA.tmp.dts
	./dtc -I dts -O dtb -o devicetree.dtb zynqmp-zcu102-revA.tmp.dts

clean:clean_swu
	rm -rf *.dtb
	rm -rf dt_ver.dtsi
	rm -rf *.tmp.dts

clean_swu:
	rm -rf swu/*.swu
	rm -rf swu/*.tar.gz