
all:
	gprbuild -p -Paflex.gpr

gens:
	.objs/aflex -s -i ascan.l
	../../ayacc/src/.objs/ayacc parser.y
