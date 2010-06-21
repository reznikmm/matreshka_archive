
AFLEX = ../../../tools/aflex/src/aflex
AYACC = ../../../tools/ayacc/src/ayacc
TOKEN_TRANSFORMER = ../../../tools/token_transformer/token_transformer
PARSER_TRANSFORMER = ../../../tools/parser_transformer/parser_transformer
SCANNER_TRANSFORMER = ../../../tools/scanner_transformer/scanner_transformer

all: .gens gen
	gprbuild -p -P demo.gpr
	.objs/demo my.xml

gen:
	cd .gens && $(AYACC) ../xml_parser.y
	cd .gens && gcc -c -gnat05 -gnatct -I../../../source/league -I../../../source/xml xml_parser_tokens.ads
	cd xml && $(TOKEN_TRANSFORMER) xml ../.gens/xml_parser_tokens.adt ../matreshka-sax-simple_readers.ads.in
	cd .gens && gcc -c -gnat05 -gnatct -I../../../source/league -I../../../source/xml xml_parser.adb
	cd xml && $(PARSER_TRANSFORMER) xml ../.gens/xml_parser.adt ../matreshka-sax-simple_readers-parser.adb.in
	cd .gens && $(AFLEX) -v ../xml_scanner.l
	cd .gens && gcc -c -gnat05 -gnatct -I.. -I../xml -I../../../source/league -I../../../source/xml xml_scanner.adb
	cd xml && $(SCANNER_TRANSFORMER) xml ../.gens/xml_scanner.adt ../matreshka-sax-simple_readers-scanner.adb.in

.gens:
	mkdir .gens

check:

clean:
	rm -rf .gens .objs
