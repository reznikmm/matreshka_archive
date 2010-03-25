include ../../Makefile.config

GPRBUILD_FLAGS = -p -XARCHITECTURE=$(ARCHITECTURE) -XBUILD=$(BUILD)
AFLEX = ../../xml/tools/aflex/src/.objs/aflex
AYACC = ../../xml/tools/ayacc/src/.objs/ayacc

all: gen
	gprbuild $(GPRBUILD_FLAGS) -Pdemo.gpr
	.obj/demo expression string

gen: .gen
	gprbuild -p -Ptools/tools.gpr
	(cd .gen && $(AFLEX) -v ../scanner.l)
	(cd .gen && $(AYACC) ../parser.y off off)
	(cd .gen && gcc -c -gnatct -gnat05 -I../../../source/league scanner.adb)
	(cd .gen && ../.obj/scanner_transformer)

.gen:
	mkdir .gen

clean:
	rm -rf .obj
	rm -rf .gen
