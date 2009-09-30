
all:
	gprbuild -p -Paflex.gpr

gens:
	.objs/aflex -s -i scanner.l
	../../../../../ayacc/src/.objs/ayacc parser.y
