
all:
	make -C ../..
	gprbuild -p -Pcmof/cmof.gpr
	gprbuild -p -Pxmi/xmi.gpr
	./xmi-reader data/cmof.xml

gen:
	gprbuild -p -Pgen-stage1/generator.gpr
	./gen-stage1/.objs/gen data/Infrastructure.cmof > cmof/generated/sources.ada
	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada

clean:
	rm -rf cmof-internals-subclassing.ad[sb] cmof-internals-metamodel.ads cmof/.objs demo gen-stage1/.objs xmi/.objs
