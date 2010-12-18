
all:
	make -C ../..
	gprbuild -p -Pcmof/cmof.gpr

gen:
	mkdir -p cmof/.gens
	gprbuild -p -Pgenerator/generator.gpr
	./generator/.objs/gen data/Infrastructure.cmof > cmof/.gens/sources.ada
	gnatchop -gnat05 -w cmof/.gens/sources.ada cmof/.gens
	rm cmof/.gens/sources.ada

clean:
#	gprclean -q -Pcmof/cmof.gpr
#	gprclean -q -Pgenerator/generator.gpr
	rm -rf cmof-internals-subclassing.ad[sb] cmof-internals-metamodel.ads cmof/.gens cmof/.objs demo generator/.objs
