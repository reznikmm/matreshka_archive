
UNIDATA = unicode/6.1.0/ucd
UCADATA = unicode/UCA/6.1.0
CLDR = unicode/cldr/1.9.0

override SMP_MFLAGS ?= -j0
## Distribution-specific OPTFLAGS
## %{GNAT_optflags} for Fedora
GNAT_OPTFLAGS ?=
GPRBUILD = gnatmake
GPRBUILD_FLAGS = -p $(SMP_MFLAGS) ${GNAT_OPTFLAGS}

CPP = cpp -undef -nostdinc -fdirectives-only -P -E
AFLEX = ../tools/aflex/src/aflex
AYACC = ../tools/ayacc/src/ayacc
TOKEN_TRANSFORMER = ../../../../tools/token_transformer/token_transformer
PARSER_TRANSFORMER = ../../../../tools/parser_transformer/parser_transformer
SCANNER_TRANSFORMER = ../../../../tools/scanner_transformer/scanner_transformer

all: Makefile.config
	${MAKE} -f Makefile.build SMP_MFLAGS="$(SMP_MFLAGS)"

check: all
	${MAKE} -f Makefile.check SMP_MFLAGS="$(SMP_MFLAGS)" UNIDATA=$(UNIDATA) UCADATA=$(UCADATA)

gen-ucd:
	rm -rf .new
	mkdir .new
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools.gpr
	.objs/tools/gen_ucd $(UNIDATA) $(UCADATA) source/league/ucd > .new/sources.ada
	gnatchop -gnat05 -w .new/sources.ada .new
	ls .new/*.ad[sb] | xargs -L1 basename | xargs -I{} ./tools/move-if-changed .new/{} source/league/ucd/{}
	rm -rf .new
#	.objs/tools/gen_segments $(CLDR)

regexp: yy_tools .gens-regexp
	cd .gens-regexp && $(AYACC) ../source/league/regexp_parser.y
	cd .gens-regexp && gcc -c -gnat12 -gnatct -I../source/league regexp_parser_tokens.ads
	cd source/league/regexp && $(TOKEN_TRANSFORMER) regexp ../../../.gens-regexp/regexp_parser_tokens.adt ../matreshka-internals-regexps-compiler.ads.in
	cd .gens-regexp && gcc -c -gnat12 -gnatct -I../source/league -I../source/league/regexp regexp_parser.adb
	cd source/league/regexp && $(PARSER_TRANSFORMER) regexp ../../../.gens-regexp/regexp_parser.adt ../matreshka-internals-regexps-compiler-parser.adb.in
	cd .gens-regexp && $(AFLEX) -v ../source/league/regexp_scanner.l
	cd .gens-regexp && gcc -c -gnat12 -gnatct -I../source/league -I../source/league/regexp regexp_scanner.adb
	cd source/league/regexp && $(SCANNER_TRANSFORMER) regexp ../../../.gens-regexp/regexp_scanner.adt ../matreshka-internals-regexps-compiler-scanner.adb.in

.gens-regexp:
	mkdir .gens-regexp

xml:	yy_tools .gens-xml
	cd .gens-xml && $(AYACC) ../source/xml/sax/xml_parser.y
	cd .gens-xml && gcc -c -gnat12 -gnatct -I../source/league -I../source/xml/sax xml_parser_tokens.ads
	cd source/xml/sax/xml && $(TOKEN_TRANSFORMER) xml ../../../../.gens-xml/xml_parser_tokens.adt ../xml-sax-simple_readers.ads.in
	cd .gens-xml && gcc -c -gnat12 -gnatct -I../source/league -I../source/xml/sax xml_parser.adb
	cd source/xml/sax/xml && $(PARSER_TRANSFORMER) xml ../../../../.gens-xml/xml_parser.adt ../xml-sax-simple_readers-parser.adb.in
	cd .gens-xml && $(AFLEX) -v -I ../source/xml/sax/xml_scanner.l
	cd .gens-xml && gcc -c -gnat12 -gnatct -I../source/league -I../source/xml/sax xml_scanner.adb
	cd source/xml/sax/xml && $(SCANNER_TRANSFORMER) xml ../../../../.gens-xml/xml_scanner.adt ../xml-sax-simple_readers-scanner.adb.in

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

Makefile.config:
	${MAKE} reconfig

reconfig: config
	./configure

config:
	$(GPRBUILD) $(GPRBUILD_FLAGS) -Pgnat/tools_configure.gpr

install:
	${MAKE} -f Makefile.install
