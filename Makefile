DESTDIR ?=
LIBDIR ?= /usr/local/lib
PREFIX ?= /usr/local
INSTALL_PROJECT_DIR = $(DESTDIR)${LIBDIR}/gnat
INSTALL_INCLUDE_DIR = $(DESTDIR)$(PREFIX)/include/matreshka
INSTALL = /usr/bin/install -c
CHMOD = chmod
LN_S = ln -s
MKDIR = mkdir -p 

LIBEXT = so
matlib = ${LIBDIR}/matreshka/
VERSION = 0.0.6
UNIDATA = unicode/6.0.0/ucd
UCADATA = unicode/UCA/6.0.0
CLDR = unicode/cldr/1.9.0

GPRBUILD = gnatmake
GPRBUILD_FLAGS = -p

CPP = cpp -undef -nostdinc -fdirectives-only -P -E
AFLEX = ../tools/aflex/src/aflex
AYACC = ../tools/ayacc/src/ayacc
TOKEN_TRANSFORMER = ../../../tools/token_transformer/token_transformer
PARSER_TRANSFORMER = ../../../tools/parser_transformer/parser_transformer
SCANNER_TRANSFORMER = ../../../tools/scanner_transformer/scanner_transformer

all: gnat/matreshka_config.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/matreshka_league.gpr
#	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/matreshka_xml.gpr

fastcgi: all
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/matreshka_fastcgi.gpr

check: all
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/matreshka_league_tests.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/matreshka_xml_tests.gpr
#	valgrind .objs/library_level_test
	.objs/string_hash_test
	.objs/string_operations_test
	.objs/string_compare_test
	.objs/character_cursor_test
	.objs/grapheme_cluster_cursor_test $(UNIDATA)
	.objs/case_conversion_test
	.objs/case_folding_test
	.objs/normalization_test $(UNIDATA)
	.objs/additional_normalization_test
	.objs/collation_test $(UCADATA)
	.objs/regexp_ataresearch testsuite/league/ataresearch/basic.dat testsuite/league/ataresearch/matreshka/basic.dat
	.objs/test_35
	.objs/test_20 testsuite/xml/TN-20/
	.objs/test_26 testsuite/xml/TN-26/26-expected.xml
	.objs/xmlconf_test testsuite/xml/xmlconf/xmlconf.xml --valid

ucd:
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools.gpr
	.objs/tools/gen_ucd $(UNIDATA) $(UCADATA) source/league/ucd
#	.objs/tools/gen_segments $(CLDR)

regexp: yy_tools .gens-regexp
	cd .gens-regexp && $(AYACC) ../source/league/regexp_parser.y
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league regexp_parser_tokens.ads
	cd source/league/regexp && $(TOKEN_TRANSFORMER) regexp ../../../.gens-regexp/regexp_parser_tokens.adt ../matreshka-internals-regexps-compiler.ads.in
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league -I../source/league/regexp regexp_parser.adb
	cd source/league/regexp && $(PARSER_TRANSFORMER) regexp ../../../.gens-regexp/regexp_parser.adt ../matreshka-internals-regexps-compiler-parser.adb.in
	cd .gens-regexp && $(AFLEX) -v ../source/league/regexp_scanner.l
	cd .gens-regexp && gcc -c -gnat05 -gnatct -I../source/league -I../source/league/regexp regexp_scanner.adb
	cd source/league/regexp && $(SCANNER_TRANSFORMER) regexp ../../../.gens-regexp/regexp_scanner.adt ../matreshka-internals-regexps-compiler-scanner.adb.in

.gens-regexp:
	mkdir .gens-regexp

xml:	yy_tools .gens-xml
	cd .gens-xml && $(AYACC) ../source/xml/xml_parser.y
	cd .gens-xml && gcc -c -gnat05 -gnatct -I../source/league -I../source/xml xml_parser_tokens.ads
	cd source/xml/xml && $(TOKEN_TRANSFORMER) xml ../../../.gens-xml/xml_parser_tokens.adt ../xml-sax-simple_readers.ads.in
	cd .gens-xml && gcc -c -gnat05 -gnatct -I../source/league -I../source/xml xml_parser.adb
	cd source/xml/xml && $(PARSER_TRANSFORMER) xml ../../../.gens-xml/xml_parser.adt ../xml-sax-simple_readers-parser.adb.in
	cd .gens-xml && $(AFLEX) -v -I ../source/xml/xml_scanner.l
	cd .gens-xml && gcc -c -gnat05 -gnatct -I../source/league -I../source/xml xml_scanner.adb
	cd source/xml/xml && $(SCANNER_TRANSFORMER) xml ../../../.gens-xml/xml_scanner.adt ../xml-sax-simple_readers-scanner.adb.in

.gens-xml:
	mkdir .gens-xml

yy_tools:
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_aflex.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_ayacc.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_token_transformer.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_parser_transformer.gpr
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_scanner_transformer.gpr

#all:
#	gprbuild -p -Pmatreshka
#
#init:
#	sqlite3 -batch -init source/opm/sqlite/schema.sql person.db ''
#	sqlite3 -batch -init demo/person.sql person.db ''

clean:
	rm -rf .objs .libs .gens-regexp .gens-xml

gnat/matreshka_config.gpr:
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_configure.gpr
	./configure

config:
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_configure.gpr
	./configure

install: install_dirs install_libs install_gpr

install_dirs:
	${MKDIR} ${DESTDIR}/${LIBDIR}/matreshka/
	${MKDIR} ${DESTDIR}/${INCLUDEDIR}/matreshka/
	${MKDIR} ${DESTDIR}/${LIBDIR}/gnat/matreshka/

install_libs:
	mv .libs/libleague.${LIBEXT} .libs/libleague.${LIBEXT}.${VERSION}
	${INSTALL} .libs/libleague.${LIBEXT}.${VERSION} ${DESTDIR}/${matlib}
	cd ${DESTDIR}/${matlib}; ${LN_S} libleague.${LIBEXT}.${VERSION} libleague.${LIBEXT}
	cd ${DESTDIR}/${matlib}; ${LN_S} libleague.${LIBEXT}.${VERSION} libleague.${LIBEXT}.${basename ${VERSION}}
	cd ${DESTDIR}/${LIBDIR}; ${LN_S} matreshka/libleague.${LIBEXT}.${VERSION} libleague.${LIBEXT}.${VERSION}
	cd ${DESTDIR}/${LIBDIR}; ${LN_S} matreshka/libleague.${LIBEXT}.${VERSION} libleague.${LIBEXT}.${basename ${VERSION}}
	cd ${DESTDIR}/${LIBDIR}; ${LN_S} libleague.${LIBEXT}.${VERSION} libleague.${LIBEXT}
	mv .libs/libmatreshka-fastcgi.${LIBEXT} .libs/libmatreshka-fastcgi.${LIBEXT}.${VERSION}
	${INSTALL} .libs/libmatreshka-fastcgi.${LIBEXT}.${VERSION} ${DESTDIR}/${matlib}
	cd ${DESTDIR}/${matlib}; ${LN_S} libmatreshka-fastcgi.${LIBEXT}.${VERSION} libmatreshka-fastcgi.${LIBEXT}
	cd ${DESTDIR}/${matlib}; ${LN_S} libmatreshka-fastcgi.${LIBEXT}.${VERSION} libmatreshka-fastcgi.${LIBEXT}.${basename ${VERSION}}
	cd ${DESTDIR}/${LIBDIR}; ${LN_S} matreshka/libmatreshka-fastcgi.${LIBEXT}.${VERSION} libmatreshka-fastcgi.${LIBEXT}.${basename ${VERSION}}
	cd ${DESTDIR}/${LIBDIR}; ${LN_S} matreshka/libmatreshka-fastcgi.${LIBEXT}.${VERSION} libmatreshka-fastcgi.${LIBEXT}.${VERSION}
	${INSTALL} .libs/* ${DESTDIR}/${matlib}
install_gpr:
	$(INSTALL) gnat/matreshka_config.gpr  $(INSTALL_PROJECT_DIR)/matreshka_config.gpr
	$(INSTALL) gnat/matreshka_league.gpr  $(INSTALL_PROJECT_DIR)/matreshka_league.gpr
	$(INSTALL) gnat/matreshka_fastcgi.gpr $(INSTALL_PROJECT_DIR)/matreshka_fastcgi.gpr
	$(INSTALL) -d $(INSTALL_INCLUDE_DIR)/league
	gnat ls -s -P gnat/matreshka_league.gpr | xargs -I sources $(INSTALL) sources $(INSTALL_INCLUDE_DIR)/league
	$(INSTALL) -d $(INSTALL_INCLUDE_DIR)/fastcgi
