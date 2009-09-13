
all:
	.objs/aflex -s -i ascan.l
	../../ayacc/src/.objs/ayacc parser.y
	gprbuild -p -Paflex.gpr
