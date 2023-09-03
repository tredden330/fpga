yosys -p "read_verilog top.v; synth_ice40 -blif out.blif"
arachne-pnr -d 1k -p constraints.pcf -P vq100 -o out.txt out.blif
icepack out.txt out.bin
sudo iceprog out.bin
