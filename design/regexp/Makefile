
all: .gen gen
	gprbuild -p -Pdemo.gpr
	.obj/demo expression

gen:
	(cd .gen && ./aflex -v scanner.l)
#	(cd gens && ./aflex -v -s scanner.l)
	(cd .gen && ./ayacc parser.y off off)

.gen:
	mkdir .gen
	(cd .gen && ln -s ../../xml/tools/aflex/src/.objs/aflex)
	(cd .gen && ln -s ../scanner.l)
	(cd .gen && ln -s ../../xml/tools/ayacc/src/.objs/ayacc)
	(cd .gen && ln -s ../parser.y)

clean:
	rm -rf .obj
	rm -rf .gen
