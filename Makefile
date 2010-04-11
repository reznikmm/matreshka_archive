
UNIDATA = unicode/5.2.0/ucd
UCADATA = unicode/UCA/5.2.0
CLDR = unicode/cldr/1.7.1

GPRBUILD_FLAGS = -p

all: gnat/matreshka_config.gpr
	gprbuild $(GPRBUILD_FLAGS) -Pgnat/matreshka_league.gpr

check: all
	gprbuild $(GPRBUILD_FLAGS) -Pgnat/matreshka_league_tests.gpr
	.objs/string_hash_test
	.objs/string_operations
#	.objs/string_compare_test
	.objs/character_cursor_test
	.objs/grapheme_cluster_cursor_test $(UNIDATA)
	.objs/case_conversion_test
	.objs/case_folding_test
	.objs/normalization_test $(UNIDATA)
	.objs/additional_normalization_test
	.objs/collation_test $(UCADATA)
	.objs/regexp_ataresearch testsuite/league/ataresearch/basic.dat testsuite/league/ataresearch/matreshka/basic.dat

ucd:
	gprbuild -p -Pgnat/tools.gpr
	.objs/tools/gen_ucd $(UNIDATA) $(UCADATA) source/league/ucd
#	.objs/tools/gen_segments $(CLDR)

regexp: regexp_tools .gens-regexp
	cd .gens-regexp && ../tools/ayacc/src/ayacc ../source/league/regexp_parser.y
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league regexp_parser_tokens.ads
	cd source/league/regexp && ../../../tools/token_transformer/token_transformer ../../../.gens-regexp/regexp_parser_tokens.adt ../matreshka-internals-regexps-compiler.ads.in
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league -I../source/league/regexp regexp_parser.adb
	cd source/league/regexp && ../../../tools/parser_transformer/parser_transformer ../../../.gens-regexp/regexp_parser.adt ../matreshka-internals-regexps-compiler-parser.adb.in
	cd .gens-regexp && ../tools/aflex/src/aflex -v ../source/league/regexp_scanner.l
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league -I../source/league/regexp regexp_scanner.adb
	cd source/league/regexp && ../../../tools/scanner_transformer/scanner_transformer ../../../.gens-regexp/regexp_scanner.adt ../matreshka-internals-regexps-compiler-scanner.adb.in

.gens-regexp:
	mkdir .gens-regexp

regexp_tools:
	gprbuild -p -Pgnat/tools_aflex.gpr
	gprbuild -p -Pgnat/tools_ayacc.gpr
	gprbuild -p -Pgnat/tools_token_transformer.gpr
	gprbuild -p -Pgnat/tools_parser_transformer.gpr
	gprbuild -p -Pgnat/tools_scanner_transformer.gpr

#all:
#	gprbuild -p -Pmatreshka
#
#init:
#	sqlite3 -batch -init source/opm/sqlite/schema.sql person.db ''
#	sqlite3 -batch -init demo/person.sql person.db ''

clean:
	rm -rf .objs .libs .gens-regexp

gnat/matreshka_config.gpr:
	gprbuild -p -Pgnat/tools_configure.gpr
	./configure

config:
	gprbuild -p -Pgnat/tools_configure.gpr
	./configure
