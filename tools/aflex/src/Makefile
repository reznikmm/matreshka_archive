
all:
	gprbuild -p -P../../../gnat/tools_aflex.gpr

gens:
	aflex -s -i scanner.l
	../../ayacc/src/ayacc parser.y off off off
