
all:
	gprbuild -p -P documentation_generator.gpr

adt:
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-characters.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-environment_variables.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-iris.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-regexps.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-settings.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-stream_element_vectors.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-strings.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-string_vectors.adb -gnatct || true
	gnatmake -c -u -f -P ../../gnat/matreshka_league.gpr league-text_codecs.adb -gnatct || true

gen: all
	.obj/docgen \
		../../.objs/league/league-characters.adt League.Characters \
		../../.objs/league/league-environment_variables.adt League.Environment_Variables \
		../../.objs/league/league-iris.adt League.IRIs \
		../../.objs/league/league-regexps.adt League.Regexps \
		../../.objs/league/league-settings.adt League.Settings \
		../../.objs/league/league-stream_element_vectors.adt League.Stream_Element_Vectors \
		../../.objs/league/league-strings.adt League.Strings \
		../../.objs/league/league-string_vectors.adt League.String_Vectors \
		../../.objs/league/league-text_codecs.adt League.Text_Codecs
