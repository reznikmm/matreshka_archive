include Makefile.config

UNIDATA = unicode/5.1.0/ucd
UCADATA = unicode/UCA/5.1.0
CLDR = unicode/cldr/1.7.1

GPRBUILD_FLAGS = -p -XARCHITECTURE=$(ARCHITECTURE) -XBUILD=$(BUILD)

all:
	gprbuild -p -Pgnat/tools_aflex.gpr
	gprbuild $(GPRBUILD_FLAGS) -Pgnat/matreshka_league.gpr

check: all
	gprbuild $(GPRBUILD_FLAGS) -Pgnat/matreshka_league_tests.gpr
	.objs/string_hash_test
#	.objs/string_compare_test
	.objs/character_cursor_test
	.objs/grapheme_cluster_cursor_test $(UNIDATA)
	.objs/case_conversion_test
	.objs/case_folding_test
	.objs/normalization_test $(UNIDATA)
	.objs/additional_normalization_test
	.objs/collation_test $(UCADATA)

ucd:
	gprbuild -p -Pgnat/tools.gpr
	.objs/tools/gen_ucd $(UNIDATA) $(UCADATA) source/league/ucd
#	.objs/tools/gen_segments $(CLDR)

#all:
#	gprbuild -p -Pmatreshka
#
#init:
#	sqlite3 -batch -init source/opm/sqlite/schema.sql person.db ''
#	sqlite3 -batch -init demo/person.sql person.db ''

clean:
	rm -rf .objs .libs
