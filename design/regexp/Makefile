include ../../Makefile.config

GPRBUILD_FLAGS = -p -XARCHITECTURE=$(ARCHITECTURE) -XBUILD=$(BUILD)

all: gen
	gprbuild $(GPRBUILD_FLAGS) -Pdemo.gpr
	.obj/demo expression string

gen: .gen
	gprbuild -p -Ptools/tools.gpr
	(cd .gen && ./aflex -v scanner.l)
#	(cd gens && ./aflex -v -s scanner.l)
	(cd .gen && ./ayacc parser.y off off)
	(cd .gen && gcc -c -gnatct -gnat05 -I../../../source/league scanner.adb)
	(cd .gen && ../.obj/scanner_transformer)

.gen:
	mkdir .gen
	(cd .gen && ln -s ../../xml/tools/aflex/src/.objs/aflex)
	(cd .gen && ln -s ../scanner.l)
	(cd .gen && ln -s ../../xml/tools/ayacc/src/.objs/ayacc)
	(cd .gen && ln -s ../parser.y)

clean:
	rm -rf .obj
	rm -rf .gen
