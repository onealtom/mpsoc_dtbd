all: rauv2

rauv2:
	cpp -DOSC_122M88 -Iinclude -E -P -xassembler-with-cpp rau-mpsoc.dts > rau-mpsoc.tmp.dts
	./dtc -I dts -O dtb -o devicetree.dtb rau-mpsoc.tmp.dts

clean:clean_swu
	rm -rf *.dtb
	rm -rf dt_ver.dtsi
	rm -rf *.tmp.dts

clean_swu:
	rm -rf swu/*.swu
	rm -rf swu/*.tar.gz