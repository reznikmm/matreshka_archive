
all:
	make -C ../..
	gprbuild -p -Pcmof/cmof.gpr
	gprbuild -p -Pxmi/xmi.gpr
	./xmi-reader data/cmof.xml

gen:
	gprbuild -p -Pgenerator/generator.gpr
	./generator/.objs/gen data/Infrastructure.cmof > cmof/generated/sources.ada
	gnatchop -gnat05 -w cmof/generated/sources.ada cmof/generated
	rm cmof/generated/sources.ada

clean:
#	gprclean -q -Pcmof/cmof.gpr
#	gprclean -q -Pgenerator/generator.gpr
	rm -rf cmof-internals-subclassing.ad[sb] cmof-internals-metamodel.ads cmof/.objs demo generator/.objs xmi/.objs
