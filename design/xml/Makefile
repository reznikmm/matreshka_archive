
all: .gens
	cd .gens && cp ../xml_scanner.l . && ../aflex -v -p xml_scanner.l # && rm xml_scanner-io.ads xml_scanner-io.adb
#	cd gen && cp ../matreshka-internals-xml_scanner.l . && ../aflex -v -p -E matreshka-internals-xml_scanner.l && rm xml_scanner-io.ads xml_scanner-io.adb
	cd .gens && cp ../xml_parser.y . && ../ayacc xml_parser.y "verbose=>on"
	gprbuild -p -Pxml.gpr

.gens:
	mkdir .gens

clean:
	rm -rf .gens .objs
