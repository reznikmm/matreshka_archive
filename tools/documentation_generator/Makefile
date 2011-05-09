
all:
	gprbuild -p -P documentation_generator.gpr

gen: all
#	gprbuild -c -u -f -P ../../gnat/matreshka_league.gpr league-strings.adb -cargs -S || true
#	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-strings.adb -S || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-strings.adb -gnatct || true
	.obj/docgen ../../.objs/league/league-strings.adt League.Strings
