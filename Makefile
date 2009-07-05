UNIDATA = unicode/5.1.0/ucd

all:
	gprbuild -p -Pgnat/matreshka_league.gpr

ucd:
	gprbuild -p -Pgnat/tools.gpr
	.objs/gen_breaks $(UNIDATA) > source/league/ucd/matreshka-internals-ucd-breaks.ads

check: all
	gprbuild -p -Pgnat/matreshka_league_tests.gpr
	.objs/character_cursor_test
	.objs/grapheme_cluster_cursor_test $(UNIDATA)

#all:
#	gprbuild -p -Pmatreshka
#
#init:
#	sqlite3 -batch -init source/opm/sqlite/schema.sql person.db ''
#	sqlite3 -batch -init demo/person.sql person.db ''

clean:
	rm -rf .objs
