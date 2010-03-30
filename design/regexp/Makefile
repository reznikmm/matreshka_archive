include ../../Makefile.config

GPRBUILD_FLAGS = -p -XARCHITECTURE=$(ARCHITECTURE) -XBUILD=$(BUILD)
AFLEX = ../../../tools/aflex/src/aflex
AYACC = ../../../tools/ayacc/src/ayacc

all: matreshka-internals-regexps-compiler-parser.adb matreshka-internals-regexps-compiler-scanner.adb
	gprbuild $(GPRBUILD_FLAGS) -Pdemo.gpr
	.obj/demo expression string

matreshka-internals-regexps-compiler-scanner.adb: matreshka-internals-regexps-compiler-scanner.adb.in scanner.l
	make gen
	(cd .gen && gcc -c -gnatct -gnat05 -I.. -I../../../source/league scanner.adb)
	(cd .gen && ../.obj/scanner_transformer)

matreshka-internals-regexps-compiler-parser.adb: matreshka-internals-regexps-compiler-parser.adb.in matreshka-internals-regexps-compiler.ads.in parser.y
	make gen
	(cd .gen && gcc -c -gnatct -gnat05 -I.. -I../../../source/league parser.adb)
	(cd .gen && ../.obj/parser_transformer)

gen: .gen
	gprbuild -p -Ptools/tools.gpr
	(cd .gen && $(AFLEX) -v ../scanner.l)
	(cd .gen && $(AYACC) ../parser.y off off)

.gen:
	mkdir .gen

clean:
	rm -rf .obj
	rm -rf .gen
